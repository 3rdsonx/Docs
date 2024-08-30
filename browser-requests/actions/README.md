# Actions

When [making a Browser Request](../api-endpoints/post-browser-requests.md) you can specify a list of actions you wish for us to carry out on the requested web page. These actions conform to the following format:

```json
{
    "type": "", //the type of the action
    "customId": "", //an optional parameter to identify this action in the response
    "params": [] //a dictionary of parameters for this action, and their values
}
```

## Supported Actions

Currently we support the following browser actions:

<table><thead><tr><th width="129">Type</th><th width="494">Description</th><th>Read More</th></tr></thead><tbody><tr><td><code>wait</code></td><td>Wait for a given time to elapse or an element to appear on page before proceeding to the next action.</td><td><a href="wait.md">Wait</a></td></tr><tr><td><code>scroll</code></td><td>Scroll to a particular point on the page or,  in the case of pages with infinite scrolling, scroll until a given time has elapsed.</td><td><a href="scroll.md">Scroll</a></td></tr><tr><td><code>click</code></td><td>Click on a given element</td><td><a href="click.md">Click</a></td></tr><tr><td><code>type</code></td><td>Type the provided text into a given element</td><td><a href="type.md">Type</a></td></tr><tr><td><code>print</code></td><td>Print the web page to a PDF</td><td><a href="print.md">Print</a></td></tr><tr><td><code>output</code></td><td>Export the page data in various formats, including screenshots</td><td><a href="output/">Output</a></td></tr></tbody></table>

The parameters each type are detailed on the page of each action.

## Action Execution

Actions are carried out in the order they are submitted. Every action type has a `continueOnFail` parameter which, if set to `false` will cause execution to finish if any action failed. Setting this to `true` ensures that all actions are carried out.

## CustomIds

As shown above, you can submit a customId with each action you submit to the API. We'll include this Id in the outputs from the browser request so you can find a certain action's output and/or status easily in the response.

