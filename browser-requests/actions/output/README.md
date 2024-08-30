# Output

### Action name: `output`

Request that the service output the page's data in one or many formats.

### Parameters

<table data-full-width="false"><thead><tr><th width="220">Name</th><th width="130">Type</th><th>Description</th></tr></thead><tbody><tr><td><code>dom_raw</code></td><td><code>boolean</code></td><td>The raw DOM of the website with nothing removed. <br><strong>Default:</strong> <code>false</code></td></tr><tr><td><code>dom_simplified</code></td><td><code>boolean</code></td><td>A processed DOM to remove unnecessary information. <a href="simplified-dom.md"><strong>Read more</strong></a><br><strong>Default:</strong> <code>false</code></td></tr><tr><td><code>site_static</code></td><td><code>boolean</code></td><td>A composed, static, html version of the site that can be viewed offline. <a href="static-site.md"><strong>Read more</strong></a><br><strong>Default:</strong> <code>false</code></td></tr><tr><td><code>markdown</code></td><td><code>boolean</code></td><td>The page contents, simplified and converted to markdown format. <a href="markdown.md"><strong>Read more</strong></a><br><strong>Default:</strong> <code>false</code></td></tr><tr><td><code>screenshot_full</code></td><td><code>boolean</code></td><td>A screenshot of the full web page.<br><strong>Default</strong>: false</td></tr><tr><td><code>screenshot_view</code></td><td><code>boolean</code></td><td>A screenshot of the current viewing area of the web page.<br><strong>Default</strong>: false</td></tr><tr><td><code>continue_on_fail</code></td><td><code>boolean</code></td><td>Should execution of further actions continue or throw an error if this action fails. <br><strong>Default: true</strong></td></tr></tbody></table>

### Usage

#### Output all

Output the page data in all available formats

```json
"actions": [
    {
        "name": "output",
        "params": {
          "dom_raw": true,
          "dom_simplified": false,
          "site_static": false,
          "markdown": false,
          "screenshot_full": true,
          "screenshot_view": true
        }
      }
]
```
