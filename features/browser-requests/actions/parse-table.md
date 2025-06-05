# Parse Table

{% include "../../../.gitbook/includes/beta-feature.md" %}

**Type**: `parse_table`&#x20;

Finds a table on the page with a given selector and then converts the table data into a JSON object.&#x20;

This action first fins the table headers and converts them into property names by converting them to lower case and replacing non-alphanumeric characters with underscores. It then processes each table row and for each cell is extracts the contents and saves a value. At the moment, all values will be `string` types.

### Parameters

<table data-full-width="false"><thead><tr><th width="212">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>selector</code></td><td><code>string</code></td><td>true</td><td>The <a href="https://www.w3schools.com/cssref/css_selectors.php">selector </a>that defines the table whose contents you want to parse.</td></tr><tr><td><code>timeout</code></td><td><code>integer</code></td><td>false</td><td>The maximum amount of time the browser should wait for the table defined by the selector to appear. <strong>Default: 5000 (5s)</strong></td></tr></tbody></table>

See [universal parameters](./#universal-parameters).

### Usage

#### Extract a table on the page

The following code will wait 1 second for the `.large_table` element to appear and return a JSON file with the headers and rows converted.

```json
"actions": [
    {
      "type": "parse_table",
      "selector": ".large_table",
      "timeout": 1000
    }
]
```
