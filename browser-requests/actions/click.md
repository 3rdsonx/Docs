# Click

### Action name: `click`

Request that the browser clicks a particular element on the page.

### Parameters

<table data-full-width="false"><thead><tr><th width="212">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>selector</code></td><td><code>string</code></td><td>true</td><td>The <a href="https://www.w3schools.com/cssref/css_selectors.php">selector </a>that defines the page element that the browser should click on.</td></tr><tr><td><code>timeout</code></td><td><code>integer</code></td><td>false</td><td>The maximum amount of time the browser should wait for the element defined by the selector to appear. <strong>Default: 20,000 (20s)</strong></td></tr><tr><td><code>continue_on_fail</code></td><td><code>boolean</code></td><td>false</td><td>Should execution of further actions continue or throw an error if this action fails. <strong>Default: true</strong></td></tr></tbody></table>

### Usage

#### Click an element on the page

The following code will wait 1 second and then continue with the next action, if provided.

```json
"actions": [
    {
      "name": "click",
       "params": {
         "selector": "a.header__logo"
       }
    }
]
```

#### Wait for a particular element to appear

The following code will wait for the logo to appear for a maximum of 5 seconds and it will continue with the list of actions

```json
"actions": [
      {
        "name": "wait",
        "params": {
          "selector": "a.header__logo",
          "timeout": 5000,
          "continueOnFail": true
      }
]
```

