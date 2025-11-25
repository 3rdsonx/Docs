---
description: >-
  An introduction to the Gaffa Browser API. Learn how you can get started
  building fast, powerful web automations!
cover: https://gitbookio.github.io/onboarding-template-images/header.png
coverY: 0
---

# Get Started

Welcome to the Gaffa documentation site! You'll find everything you need here to get started using API including [interactive API definitions](/broken/pages/Jer3HvlR3KNzesxDbiIL), [a comprehensive list of actions](features/browser-requests/actions/) you can use to interact with our cloud browsers and [breakdowns of our example requests](features/browser-requests/api-playground-examples/) you can run right away in our API Playground.

{% hint style="info" %}
Gaffa is currently in it's very early stages, so we'd love to hear how we can improve our docs and API to make life easier for our users. If you have any questions or comments please [email us](https://emailto:support@gaffa.dev) or us [the support tool on our site](https://go.crisp.chat/chat/embed/?website_id=87a5807c-14f5-4ed3-9fbe-3d161610357b).\
\
To stay up to date with latest developments, features and news on mission to support the development of revolutionary AI Agents, sign up to sporadic [newsletter](https://gaffa.dev/#newsletter) updates.
{% endhint %}



{% stepper %}
{% step %}
## Create an account

You can sign up to create a Gaffa account [here](https://accounts.gaffa.dev/sign-up?redirect_url=https%3A%2F%2Fgaffa.dev%2F%2Fauth%2Fsign-in). After signing up you'll immediately be able to use the API to start using our [API Playground](https://gaffa.dev/dashboard/playground) which has a number of pre-built automations for [our demo site ](https://demo.gaffa.dev/)simulating a range of scenarios.&#x20;

#### Accessing the open web

When you're ready to use Gaffa on the open web you'll need to choose a plan suitable for your needs and pay at which point the full internet will be available for you to automate.

{% hint style="danger" %}
In order to avoid scaling issues for our existing customers we are currently operating a queuing system for new accounts. Simply join the queue when prompted on your [account dashboard](https://gaffa.dev/dashboard) and we'll let you know when you have access.\
\
If you want to jump the queue, you can fill out a short survey to help us better understand our users and we'll approve your account sooner!
{% endhint %}


{% endstep %}

{% step %}
## Making your first browser request

The easiest way to make your first Gaffa [browser request](features/browser-requests/) is to start using our [API Playground](https://gaffa.dev/dashboard/playground) where you can see several pre-made and interactive browser request examples of automations we've built against our test site which simulates some common scraping and web automation scenarios. You can run these examples without a paid account and also edit them easily to experiment - once you have a paid account you can also use the playground to build your automations for other sites.

### Gaffa API Playground examples

Here are all the sample requests we've created for use in the API Playground.

<table data-view="cards"><thead><tr><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><strong>Print to PDF</strong></td><td>Export a web page to PDF and wait for elements to load with the Gaffa API.</td><td><a href="features/browser-requests/api-playground-examples/export-web-page-to-pdf.md">export-web-page-to-pdf.md</a></td></tr><tr><td><strong>Convert to Markdown</strong></td><td>Export a web page to markdown format - useful feeding into LLM apps.</td><td><a href="features/browser-requests/api-playground-examples/convert-web-page-to-markdown.md">convert-web-page-to-markdown.md</a></td></tr><tr><td><strong>Infinitely Scroll</strong></td><td>Scroll the bottom of a page that infinitely loads items and record the interaction.</td><td><a href="features/browser-requests/api-playground-examples/infinitely-scroll-an-ecommerce-site.md">infinitely-scroll-an-ecommerce-site.md</a></td></tr><tr><td><strong>Capture Screenshot</strong></td><td>Interact with a page and capture the a screenshot of the whole page.</td><td><a href="features/browser-requests/api-playground-examples/capture-a-full-height-screenshot.md">capture-a-full-height-screenshot.md</a></td></tr><tr><td><strong>Form Completion</strong></td><td>Fill out a form in a human-like way and record the interaction</td><td><a href="features/browser-requests/api-playground-examples/automated-form-filling.md">automated-form-filling.md</a></td></tr></tbody></table>


{% endstep %}

{% step %}
## Building your own browser requests

Once you have a paid account and are ready to start building your own browser requests you'll want to read about all the other [actions ](features/browser-requests/actions/)you can use for your solution as well as how you can easily use [proxy servers](features/browser-requests/#proxy-servers), [our cache](features/browser-requests/#caching) as well as the [other endpoints that are part of the API](/broken/pages/Jer3HvlR3KNzesxDbiIL).
{% endstep %}
{% endstepper %}

