# Generate Static Site

### Action name: `generate_static_site`

This output type will return a HTML file which captures a static version of the page state. The page will load offline and can be saved to your local machine.

This will:

* Load and embed all images on the page.
* Embed all css files

Currently, Javascript will be disabled and interactivity might not worked as expected but this feature should be useful for preserving the page state as it was and allowing you to view it.

### Parameters

See [universal parameters](./#universal-parameters)

### Usage

The following captures the current section of the page currently visible in the browser.

```json
"actions": [
    {
        "type": "generate_static_site",
    }
]
```
