---
description: What is Gaffa?
layout:
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: false
---

# Introduction

Gaffa is a powerful API for browser automation which allows you to control real web browsers at scale through a simple interface with no configuration necessary. We'll handle the complexities of managing infrastructure like virtual machines, proxies and caching so you can focus on building powerful and reliable web automation and AI applications!

<table data-view="cards"><thead><tr><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><strong>API Playground</strong></td><td>Start experimenting with the Gaffa API right now.</td><td><a href="broken-reference">Broken link</a></td></tr><tr><td><strong>Get Started</strong></td><td>The simple steps to get you started using Gaffa in your apps.</td><td><a href="get-started.md">get-started.md</a></td></tr><tr><td><strong>API Reference (TODO)</strong></td><td>Explore the API and docs for the finer details</td><td></td></tr></tbody></table>

## Key features

Gaffa is ready to power your web automations:

* **Simplicity** - there's no need to learn another new framework, Gaffa is accessible through a simple REST API - just tell it what site you want to visit and what actions you want to perform and it will be carried out as soon as you send the request.
* **Real browsers** - headless browsers are popular but we make it simple to control real cloud-hosted browsers at scale which render JavaScript sites exactly as they would on a local machine, are harder to detect when doing scraping and allow full observability. We're also planning to allow you to go beyond just being able to control web browsers!
* **Proxies** - you can easily choose to route your traffic through a network of residential proxy IP addresses to help avoid bot-detection on sites you are trying to automate.
* **Scalable** - whether you want to control a single cloud browser or 100s in parallel with Gaffa you can do that easily without one thought about infrastructure management.
* **Powerful data processing** - once you've accessed your desired site you can export your data in a constantly growing number of formats. If you want the [page content in markdown](features/browser-requests/actions/generate-markdown.md) to feed into a large language model or [an image](features/browser-requests/actions/capture-screenshot.md) to feed into a vision modal we can help.

## Ready to work with Gaffa?

{% content-ref url="get-started.md" %}
[get-started.md](get-started.md)
{% endcontent-ref %}

## Stay up to date

We'll be sporadically announcing updates and new features in our newsletter - [sign up here](https://gaffa.dev/#newsletter).
