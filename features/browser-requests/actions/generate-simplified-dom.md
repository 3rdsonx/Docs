# Generate Simplified DOM

**Type:** `generate_simplified_dom`

When you're looking at the DOM of a web page, there's a lot of unnecessary data that can be discarded if you are only interested in the page's elements or looking to export the data into an LLM. \
\
The `generate_simplified_dom` output format processes the HTML in the following way:

* Removes all links in the `head`
* Removes all `script` nodes and links to scripts
* Removes all `style` nodes
* Remove `style` attributes from all elements
* Remove all links to stylesheets
* Remove all `noscript` elements outside of the body
* Finds all `hrefs` with query strings and removes the query strings
* Important `meta` tags are kept, all others are removed
* Remove all `alternate` links
* Remove all SVG paths
* Remove empty text nodes and excessive spacing

### Parameters

See [universal parameters](./#universal-parameters).

### Usage

The following JSON captures the page's DOM and simplifies it.

```json
"actions": [
    {
        "type": "generate_simplified_dom"
    }
]
```

{% hint style="info" %}
We are actively working to improve this and to make this process more configurable - let us know if there's something you think we can improve.&#x20;
{% endhint %}

### Example Output

{% file src="../../../.gitbook/assets/GaffaSimplifiedDOMSample.txt" %}
