# Actions

When [making a Browser Request](../api-endpoints/post-browser-requests.md) you can specify a list of actions you wish for us to carry out on the requested web page. These actions conform to the following format:

{% code overflow="wrap" fullWidth="true" %}
```json
{
    "type": "", //the type of the action
    //other params follow as key value pairs
    "key": value //string, number etc. 
}
```
{% endcode %}

### Universal Parameters

All actions have the following parameters:

<table data-full-width="false"><thead><tr><th width="226">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>type</code></td><td><code>string</code></td><td>true</td><td>The type name of the action.</td></tr><tr><td><code>continue_on_fail</code></td><td><code>boolean</code></td><td>false</td><td>Should execution of further actions continue or throw an error if this action fails. <br><strong>Default:</strong> <code>true</code></td></tr><tr><td><code>customId</code></td><td><code>string</code></td><td>false</td><td>A customId to help you find the action in the response.<br><strong>Default:</strong> <code>null</code></td></tr></tbody></table>

#### Action Execution

Actions are carried out in the order they are submitted. Every action type has a `continue_on_fail` parameter which, if set to `false` will cause execution to finish if any action failed. Setting this to `true` ensures that all actions are carried out.

#### Custom Id

As shown above, you can submit a customId with each action you submit to the API. We'll include this Id in the outputs from the browser request so you can find a certain action's output and/or status easily in the response.

## Response Format

When a browser request has completed, information on an action's execution

{% code fullWidth="true" %}
```
{
    "id": "", //a unique id given to the action by Gaffa
    "type": "capture_screenshot", //the type of the action
    "query": "", //a representation of the action in querystring format
    "timestamp": "2024-11-01T18:08:54.9653402Z", //the UTC timestamp the action was executed
    "output": "" //if the action has an output you will find a url for this here
}
```
{% endcode %}

## Supported Actions

The Gaffa API supports the following actions detailed below. Click the "read more" buttons to read more information about each type.

### Actions without outputs

<table data-full-width="true"><thead><tr><th width="300">Type</th><th width="494">Description</th><th>Read More</th></tr></thead><tbody><tr><td><code>wait</code></td><td>Wait for a given time to elapse or an element to appear on page before proceeding to the next action.</td><td><a href="wait.md">Wait</a></td></tr><tr><td><code>click</code></td><td>Click on a given element</td><td><a href="click.md">Click</a></td></tr><tr><td><code>scroll</code></td><td>Scroll to a particular point on the page or,  in the case of pages with infinite scrolling, scroll until a given time has elapsed.</td><td><a href="scroll.md">Scroll</a></td></tr><tr><td><code>type</code></td><td>Type the provided text into a given element</td><td><a href="type.md">Type</a></td></tr></tbody></table>

### Actions with outputs

<table data-full-width="true"><thead><tr><th width="300">Type</th><th width="494">Description</th><th>Read More</th></tr></thead><tbody><tr><td><code>print</code></td><td>Print the web page to a PDF</td><td><a href="print.md">Print</a></td></tr><tr><td><code>capture_dom</code></td><td>Export the raw DOM page data</td><td></td></tr><tr><td><code>generate_simplified_dom</code></td><td>Generate a simplified version of the DOM</td><td></td></tr><tr><td><code>generate_static_site</code></td><td>Create a completely static version of the web page which can be accessed offline</td><td></td></tr><tr><td><code>generate_markdown</code></td><td>Convert the page into markdown</td><td></td></tr><tr><td><code>capture_screenshot</code></td><td>Capture a screenshot of the web page</td><td></td></tr></tbody></table>

TODO: Order alphabetically
