# Actions

When [making a Browser Request](../api-endpoints/post-browser-requests.md) you can specify a list of actions you wish for us to carry out on the requested web page. These actions conform to the following format:

{% code overflow="wrap" fullWidth="true" %}
```json
{
    "type": "", //the type of the action
    "customId": "", //an optional parameter to identify this action in the response
    "continue_on_fail": false, //optionally specify if a request should stop if an action fails

    //other params follow as key value pairs
    "key": value //string, number etc. 
}
```
{% endcode %}

## Supported Actions

Currently we support the following browser actions:

<table data-full-width="true"><thead><tr><th width="300">Type</th><th width="494">Description</th><th>Read More</th></tr></thead><tbody><tr><td><code>wait</code></td><td>Wait for a given time to elapse or an element to appear on page before proceeding to the next action.</td><td><a href="wait.md">Wait</a></td></tr><tr><td><code>scroll</code></td><td>Scroll to a particular point on the page or,  in the case of pages with infinite scrolling, scroll until a given time has elapsed.</td><td><a href="scroll.md">Scroll</a></td></tr><tr><td><code>click</code></td><td>Click on a given element</td><td><a href="click.md">Click</a></td></tr><tr><td><code>type</code></td><td>Type the provided text into a given element</td><td><a href="type.md">Type</a></td></tr><tr><td><code>print</code></td><td>Print the web page to a PDF</td><td><a href="print.md">Print</a></td></tr><tr><td><code>capture_dom</code></td><td>Export the raw DOM page data</td><td></td></tr><tr><td><code>generate_simplified_dom</code></td><td>Generate a simplified version of the DOM</td><td></td></tr><tr><td><code>generate_static_site</code></td><td>Create a completely static version of the web page which can be accessed offline</td><td></td></tr><tr><td><code>generate_markdown</code></td><td>Convert the page into markdown</td><td></td></tr><tr><td><code>capture_screenshot</code></td><td>Capture a screenshot of the web page</td><td></td></tr></tbody></table>

The parameters each type are detailed on the page of each action.

## Action Execution

Actions are carried out in the order they are submitted. Every action type has a `continue_on_fail` parameter which, if set to `false` will cause execution to finish if any action failed. Setting this to `true` ensures that all actions are carried out.

## CustomIds

As shown above, you can submit a customId with each action you submit to the API. We'll include this Id in the outputs from the browser request so you can find a certain action's output and/or status easily in the response.

