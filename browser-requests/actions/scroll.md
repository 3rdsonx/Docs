# Scroll

### Action name: `scroll`

Request that the browser scrolls to a certain point on the page or, in the case of pages with infinite scrolling, scrolls for a particular amount of time.

### Parameters

<table data-full-width="false"><thead><tr><th width="215">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>percentage</code></td><td><code>integer</code></td><td>false</td><td>The percentage the page should scroll up or down (+/-) <strong>Default: 100% (scroll to bottom)</strong></td></tr><tr><td><code>timeout</code></td><td><code>integer</code></td><td>false</td><td>The maximum amount of time the page should be scrolled for. <strong>Default: 20,000 (20s)</strong><br></td></tr></tbody></table>

See [universal parameters](./#universal-parameters).

{% hint style="info" %}
Sites that use more advanced bot detection often use scroll events to detect unusual activity on their site, rather than immediately landing on a page and scrolling to the bottom without any interaction our  platform scrolls naturally, in a human-like manner to the desired location on the page.
{% endhint %}

### Usage

#### Scroll a particular percentage down the page

The following code will scroll half way down the page.

```json
"actions": [
      {
        "name": "scroll",
        "percentage": 50
      }
]
```

#### Scroll an infinitely scrolling webpage

The following code will scroll to the bottom of the page and then keep scrolling when new content loads for a maximum of 15 seconds.

```json
"actions": [
      {
        "name": "scroll",
        "infinite": true,
        "timeout": 15000
      }
]
```



