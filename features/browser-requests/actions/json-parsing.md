# JSON Parsing

{% hint style="info" %}
**Paid Action:** This action will consume credits based on the amount of content being parsed, see more [below](json-parsing.md#pricing).
{% endhint %}

{% include "../../../.gitbook/includes/beta-feature.md" %}

**Type:** `json_parse`

Use AI to parse web content from text into a pre-defined data schema and return it as a JSON object.&#x20;

_Currently this feature only works with online PDFs but we are working to expand it to webpages._&#x20;

### Parameters

<table data-full-width="false"><thead><tr><th width="212">Name</th><th width="130">Type</th><th width="108" data-type="checkbox">Required</th><th>Description</th></tr></thead><tbody><tr><td><code>data_schema</code></td><td><code>string</code></td><td>true</td><td>The id of the data schema you have defined that you want to transform the content into.</td></tr><tr><td><code>instruction</code></td><td><code>string</code></td><td>false</td><td>A custom instruction, in addition to any detail you have added to the data schema, that you want to include with this particular parse.</td></tr><tr><td><code>model</code></td><td><code>string</code>`</td><td>false</td><td>The AI model you wish to use to parse the content into JSON. <br><strong>Default:</strong> <code>gpt-4o-mini</code><br><strong>Accepted</strong>: <code>["gpt-4o-mini"]</code></td></tr><tr><td><code>input_token_cap</code></td><td><code>int</code></td><td>false</td><td>The max number of source input tokens that will be passed to the AI model to parse. This can be used to prevent unnecessary credit usage. If your source input is longer than the token cap, it will be abbreviated.<br><strong>Default:</strong> 1,000,000</td></tr></tbody></table>

See [universal parameters](./#universal-parameters).

### Pricing

The credits this action uses depends on the model used. Here are the current supported models and their pricing:

| Model         | Input Token Cost                 | Output Token Cost                  |
| ------------- | -------------------------------- | ---------------------------------- |
| `gpt-4o-mini` | 1 credit per 10,000 input tokens | 4 credits per 10,000 output tokens |

