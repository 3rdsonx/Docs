# Capture DOM

**Type:** `capture_dom`

This action will capture and return the site's raw DOM, which you can then extract data from on your end.&#x20;

For common AI scenarios, you may find that this returns too much data, so we have provided a [`generate_simplified_dom`](generate-simplified-dom.md) , an action that distills the DOM to only the important elements.&#x20;

### Parameters

See [universal parameters](./#universal-parameters).

### Usage

Capture the raw DOM of the current page

```
"actions": [
    {
      "type": "capture_dom"
    }
]
```

### Example Output

{% file src="../../../.gitbook/assets/GaffaDOMSample.txt" %}
