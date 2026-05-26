#!/usr/bin/env python3
"""Build and send Slack notification for failed docs link check."""
import json
import os
import sys
import urllib.request

DETAILS_FILE = "link-check-details.txt"
MAX_DETAILS_LEN = 2800


def main() -> int:
    webhook = os.environ.get("SLACK_WEBHOOK_URL", "").strip()
    if not webhook:
        print("SLACK_WEBHOOK_URL not set; skipping Slack notification.")
        return 0

    details = ""
    if os.path.isfile(DETAILS_FILE):
        details = open(DETAILS_FILE, encoding="utf-8").read().strip()
    if not details:
        details = "(no line details captured)"

    if len(details) > MAX_DETAILS_LEN:
        details = details[:MAX_DETAILS_LEN] + "\n...(truncated)"

    server = os.environ["GITHUB_SERVER_URL"]
    repo = os.environ["GITHUB_REPOSITORY"]
    run_id = os.environ["GITHUB_RUN_ID"]
    ref = os.environ.get("GITHUB_REF_NAME", os.environ.get("GITHUB_REF", ""))
    actor = os.environ["GITHUB_ACTOR"]
    sha = os.environ["GITHUB_SHA"]

    run_url = f"{server}/{repo}/actions/runs/{run_id}"
    commit_url = f"{server}/{repo}/commit/{sha}"

    payload = {
        "text": "Docs link check failed",
        "blocks": [
            {
                "type": "header",
                "text": {"type": "plain_text", "text": "Docs link check failed"},
            },
            {
                "type": "section",
                "fields": [
                    {"type": "mrkdwn", "text": f"*Repo:*\n<{server}/{repo}|{repo}>"},
                    {"type": "mrkdwn", "text": f"*Branch:*\n`{ref}`"},
                    {
                        "type": "mrkdwn",
                        "text": f"*Commit:*\n<{commit_url}|{sha[:7]}>",
                    },
                    {"type": "mrkdwn", "text": f"*Author:*\n{actor}"},
                ],
            },
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": f"*Details:*\n```{details}```",
                },
            },
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": f"<{run_url}|View workflow run>",
                },
            },
        ],
    }

    data = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(
        webhook,
        data=data,
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=30) as resp:
        print(f"Slack notification sent (HTTP {resp.status})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
