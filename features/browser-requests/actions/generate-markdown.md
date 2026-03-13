# Generate Markdown

Type: `generate_markdown`

The markdown output format exports page data (articles, tables, etc.) in a human- and LLM-readable format, removing unnecessary styling and other "junk" that is only relevant to the site's proper functioning.

Gaffa exports [GitHub-flavoured markdown](https://github.github.com/gfm/) with comments removed and unknown tags ignored.

### Parameters

<table><thead><tr><th width="184.21875">Name</th><th width="130.66796875">Type</th><th width="106.7734375" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>selector</code></td><td>string</td><td>false</td><td>The <a href="https://www.w3schools.com/cssref/css_selectors.php">selector</a> that defines an element you want to generate markdown from. This is useful if you are only interested in the contents of a certain element.</td></tr><tr><td><code>output_type</code></td><td>string</td><td>false</td><td>Should the action output be saved to a file where a URL will be returned or should the parsed  JSON object be included directly in the request.<br><br><strong>Default:</strong> <code>file</code><br><strong>Accepted</strong>: <code>["file", "inline"]</code></td></tr></tbody></table>

See [universal parameters](./#universal-parameters).

### Usage

The following converts the current page to markdown:

```json
"actions": [
  {
    "type": "generate_markdown"
  }
]
```

The following converts only a specific element to markdown and returns it inline:

```json
"actions": [
  {
    "type": "generate_markdown",
    "selector": "article",
    "output_type": "inline"
  }
]
```

### Example Output

{% file src="../../../.gitbook/assets/GaffaMarkdownExample (1).md" %}
