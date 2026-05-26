#!/usr/bin/env bash
# Checks markdown for GitBook-style broken links and missing internal targets.
set -euo pipefail

ROOT="${1:-.}"
cd "$ROOT"

errors=0

echo "==> Checking for known GitBook broken-link patterns..."

# Patterns that indicate a link was never resolved after Git Sync
patterns=(
  '/broken/pages/'
  'broken-reference'
  '](broken-reference)'
)

GREP_EXCLUDE=(--exclude-dir='.git' --exclude-dir='.github')

for pattern in "${patterns[@]}"; do
  if matches=$(grep -RIn --include='*.md' "${GREP_EXCLUDE[@]}" -- "$pattern" . 2>/dev/null || true); then
    if [ -n "$matches" ]; then
      echo ""
      echo "ERROR: Found broken link pattern: ${pattern}"
      echo "$matches"
      errors=$((errors + 1))
    fi
  fi
done

# Literal "Broken link" link text (common when OpenAPI/refs fail in GitBook)
if broken_text=$(grep -RIn --include='*.md' "${GREP_EXCLUDE[@]}" \
  -E '\[Broken link\]\([^)]+\)' . 2>/dev/null || true); then
  if [ -n "$broken_text" ]; then
    echo ""
    echo "ERROR: Found markdown links with text 'Broken link':"
    echo "$broken_text"
    errors=$((errors + 1))
  fi
fi

resolve_path() {
  local base_dir="$1"
  local target="$2"
  python3 - "$base_dir" "$target" <<'PY'
import os, sys
base, target = sys.argv[1], sys.argv[2]
print(os.path.normpath(os.path.join(os.path.abspath(base), target)))
PY
}

echo ""
echo "==> Checking internal markdown links point at existing files..."

# Extract [text](path) where path is a local .md file
while IFS= read -r -d '' file; do
  # SUMMARY.md paths are relative to the repo root (GitBook convention)
  if [ "$(basename "$file")" = "SUMMARY.md" ]; then
    base_dir="."
  else
    base_dir=$(dirname "$file")
  fi

  while IFS= read -r link; do
    [ -z "$link" ] && continue
    target="${link%%#*}"
    [ -z "$target" ] && continue
    [[ "$target" == http* ]] && continue
    [[ "$target" == mailto:* ]] && continue

    resolved=$(resolve_path "$base_dir" "$target")

    if [ ! -f "$resolved" ]; then
      echo "ERROR: $file -> $link (file not found: $target)"
      errors=$((errors + 1))
    fi
  done < <(grep -oE '\[[^]]*\]\([^)]+\)' "$file" | sed -E 's/^\[[^]]*\]\(([^)]+)\)$/\1/' | grep -E '\.md$' || true)
done < <(find . -name '*.md' -not -path './.git/*' -not -path './.github/*' -print0)

if [ "$errors" -gt 0 ]; then
  echo ""
  echo "FAILED: $errors broken link issue(s) found."
  exit 1
fi

echo ""
echo "OK: No broken link patterns or missing internal .md targets found."
