# Docs link check (GitHub Actions + Slack)

This repo runs a link check on every push and pull request.

## What it checks

1. **GitBook broken patterns** — e.g. `/broken/pages/...`, `broken-reference`, `[Broken link](...)`
2. **Missing internal `.md` links** — relative links that do not point at a real file in the repo

## GitHub setup

1. Commit and push `.github/workflows/docs-link-check.yml` and `.github/scripts/check-docs-links.sh`
2. In GitHub: **Settings → Actions → General** — allow workflows (if not already enabled)
3. The check runs automatically on push and PR

### Who creates the webhook?

| Role | What they do |
|------|----------------|
| **Slack** (James, workspace admin, or channel admin) | Creates the Incoming Webhook for `#docs` — needs permission to add apps/integrations in your Slack workspace |
| **GitHub** (you or any repo admin) | Adds the webhook URL as the `SLACK_WEBHOOK_URL` repository secret |

You do **not** need to own the channel to add the secret on GitHub, but you **do** need someone with Slack permissions to generate the webhook URL first. If “Incoming Webhooks” is restricted at your company, ask James or IT.

The webhook URL is a secret — share it only via your team’s secure channel (1Password, admin DM), not in Slack public messages or in the repo.

### Steps

1. In Slack: create or use channel `#docs`
2. Create an **Incoming Webhook** for that channel:
   - Slack → **Apps** → **Incoming Webhooks** → Add to Slack → pick `#docs`
3. In GitHub: **Settings → Secrets and variables → Actions → New repository secret**
   - Name: `SLACK_WEBHOOK_URL`
   - Value: the webhook URL from Slack
4. Push a commit that fails the check (or re-run a failed workflow) — you should see a message in `#docs`

If `SLACK_WEBHOOK_URL` is not set, the workflow still fails on broken links but skips Slack (no error).

## Run locally

```bash
chmod +x .github/scripts/check-docs-links.sh
.github/scripts/check-docs-links.sh .
```

## GitBook Agent (separate from this workflow)

[GitBook Agent](https://gitbook.com/docs/guides/editing-and-publishing-documentation/gitbook-agent-prompt-examples) runs inside GitBook’s editor, not in GitHub Actions. Use it for bulk tasks (descriptions, find/replace, fixing relative links in the space).

Slack/Linear integrations for GitBook are configured in GitBook’s product settings — they can notify your team when docs change, with human review. They are not automatically triggered by this GitHub Action unless you build that integration separately.
