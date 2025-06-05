---
description: >-
  An example request that uses Gaffa to automate the completion of a form and
  waits for a success modal to appear.
---

# Automated Form Filling

_The following example is a request we've pre-built to show you Gaffa's capabilities against our_ [_demo site._](https://demo.gaffa.dev) _**You can run this request right now in the**_ [_**Gaffa API Playground**_](https://gaffa.dev/dashboard/playground?templateId=form_fill)_**.**_

Filling forms is tedious, Gaffa can be used to fill out a form in a human-like manner so you can spend time doing much more interesting things.

## API Request

The request below uses the [POST endpoint](../../../api-reference/post-v1-browser-requests.md) to open the demo site on the form simulator page with some sections pre-filled (for speed). After typing in the required information and clicking submit, Gaffa waits for the success dialog to show before returning a video of the interaction.

```json
{
  "url": "https://demo.gaffa.dev/simulate/form?loadTime=3&showModal=false&modalDelay=0&formType=address&firstName=John&lastName=Doe&address1=123%20Main%20Street&city=London&country=UK",
  "proxy_location": null,
  "async": false,
  "max_cache_age": 0,
  "settings": {
    "record_request": true,
    "actions": [
      {
        "type": "type",
        "selector": "#email",
        "text": "johndoe@example.com"
      },
      {
        "type": "type",
        "selector": "#state",
        "text": "CA"
      },
      {
        "type": "type",
        "selector": "#zipCode",
        "text": "12345"
      },
      {
        "type": "click",
        "selector": "button[type='submit']"
      },
      {
        "type": "wait",
        "selector": "[role=\"dialog\"] h2:has-text(\"Success!\")",
        "timeout": 10000
      }
    ]
  }
}
```

## Actions

{% content-ref url="../actions/type.md" %}
[type.md](../actions/type.md)
{% endcontent-ref %}

{% content-ref url="../actions/click.md" %}
[click.md](../actions/click.md)
{% endcontent-ref %}

{% content-ref url="../actions/wait.md" %}
[wait.md](../actions/wait.md)
{% endcontent-ref %}

## Response

Here's a video showing Gaffa filling out the page and waiting for the success modal.

{% embed url="https://youtu.be/TGPnuc-71Bs" %}
Gaffa can help automatically fill out your forms!
{% endembed %}

## Read More

Read more about screen recording here (TODO).
