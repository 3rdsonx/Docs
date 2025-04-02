# Changelog

Keep up to date with Gaffa's changes. To be the first to hear about changes subscribe to our [newsletter](https://gaffa.dev/#newsletter).

## April 2025

### 02.04.2025

* **Subscriptions and Credits**
  * You can now buy "pay as you go" credits to be used without a subscription, or to complement the credits in your subscription for larger one-off jobs.
  * We've adjusted the plans and credits slightly, take a look at the [updated subscriptions](https://gaffa.dev/#pricing).

## March 2025

### 17.03.2025

* **Proxies**
  * We have added support for another European location, [France](features/browser-requests/#proxy-servers)\

* **Actions**
  * [Simplified DOM](features/browser-requests/actions/generate-simplified-dom.md) action no longer removes classes.
  * [Click](features/browser-requests/actions/click.md) default `timeout` now 5 seconds
  * [Scroll](features/browser-requests/actions/scroll.md) removed timeout and add new functionality using `wait_time`, `max_scroll_time`, `scroll_speed` and `interval`
  * [Type](features/browser-requests/actions/type.md) default timeout now 5 seconds
  * [Wait](features/browser-requests/actions/wait.md) default timeout now 5 seconds\

* **Settings**
  * [`max_media_bandwidth`](features/browser-requests/#max-media-bandwidth) caps media downloads to prevent excess data usage.
  * [`time_limit`](features/browser-requests/#time-limit) added to cap the duration of requests.\

* **Stealth**
  * We've developed some new browser technology which makes Gaffa's browser look even more like human-initiated website traffic.&#x20;

