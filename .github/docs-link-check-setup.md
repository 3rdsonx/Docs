# Docs link check (GitHub Actions + Slack)

This repo runs a link check on every push and pull request.

## What it checks

1. **GitBook broken patterns** — e.g. `/broken/pages/...`, `broken-reference`, `[Broken link](...)`
2. **Missing internal `.md` links** — relative links that do not point at a real file in the repo

## Run locally

```bash
chmod +x .github/scripts/check-docs-links.sh
.github/scripts/check-docs-links.sh .
```