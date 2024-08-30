# Type

### Action name: `type`

Request that the browser type a particular bit of text into a field.

### Parameters

<table data-full-width="false"><thead><tr><th width="212">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>selector</code></td><td><code>string</code></td><td>true</td><td>The <a href="https://www.w3schools.com/cssref/css_selectors.php">selector </a>that defines the page element that the browser should click on.</td></tr><tr><td><code>text</code></td><td><code>string</code></td><td>true</td><td>The text the browser should enter into the text field.</td></tr><tr><td><code>timeout</code></td><td><code>integer</code></td><td>false</td><td>The maximum amount of time the browser should wait for the element that needs to be typed in to appear. <br><strong>Default: 20,000 (20s)</strong></td></tr><tr><td><code>continue_on_fail</code></td><td><code>boolean</code></td><td>false</td><td>Should execution of further actions continue or throw an error if this action fails. <br><strong>Default: true</strong></td></tr></tbody></table>

{% hint style="info" %}
Sites that use more advanced bot detection often use keyboard events to detect unusual activity on their site, rather than immediately dropping all characters of the text into a field our platform types the text in a human-like manner.
{% endhint %}

### Usage

#### Type into a text box

The following action will type into a particular text field.

```json
"actions": [
      {
        "name": "type",
         "params": {
           "selector": "#postform-text",
           "text": "Hello world!"
         }
      }
]
```

#### Wait for an element to appear before typing

The following code will wait a maximum of 10 seconds for the email input to appear in the field and then type in the provided email.

```json
"actions": [
      {
        "name": "type",
         "params": {
           "selector": "form input[name="email"]",
           "text": "test@test.com"
           "timeout": 10000
         }
      }
]
```



