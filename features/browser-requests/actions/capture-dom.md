# Capture DOM

**Type:** `capture_dom`

This action will capture and return the raw dom of the site which you can then extract data from on your end.&#x20;

For common AI scenarios you may find this returns too much data so we have provided a [`generate_simplified_dom` ](generate-simplified-dom.md)action which distills the DOM to only the important elements.&#x20;

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
