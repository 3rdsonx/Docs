# Wait

**Type**: `wait`

Request that the browser waits a given amount of time or for a particular item to appear on the page.

### Parameters

<table data-full-width="false"><thead><tr><th width="214">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>time</code></td><td><code>integer</code></td><td>false</td><td>The time in milliseconds that the browser should wait</td></tr><tr><td><code>selector</code></td><td><code>string</code></td><td>false</td><td>The <a href="https://www.w3schools.com/cssref/css_selectors.php">selector </a>that defines the page element that the browser should wait to appear.</td></tr><tr><td><code>timeout</code></td><td><code>integer</code></td><td>false</td><td>The maximum amount of time the browser should wait for the provided selector to appear. <strong>Default: 10,000 (10s)</strong></td></tr></tbody></table>

See [universal parameters](./#universal-parameters).

### Usage

#### Wait for a particular amount of time

The following code will wait 1 second and then continue with the next action, if provided.

```json
"actions": [
      {
        "name": "wait",
        "time": 1000,
      }
]
```

#### Wait for a particular element to appear

The following code will wait for a table to appear on the page for a maximum of 5 seconds. If the table has not appeared after 5 seconds the next action will be executed, if provided.

```json
"actions": [
      {
        "name": "wait",
        "selector": "table",
        "timeout": 5000,
        "continueOnFail": true
      }
]
```

