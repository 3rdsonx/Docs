# Mapping Requests

{% include "../.gitbook/includes/beta-feature.md" %}

Mapping requests allow you to extract all urls from the sitemap of a website. Gaffa mapping requests have the following useful features:

* **Sitemap Discovery:** No need to find the URL of a site's sitemap, we'll find it automatically.
* **Caching:** If you or another Gaffa user has retrieved a sitemap within a defined timeframe we'll quickly return the cached data instead of having to fetch it all again.
* **Index Traversal:** If the sitemap references other sitemap files we'll automatically process each one of those and add them to the list of urls emsuring the whole hierachy is captured.
* **Aggregation and Duplicate Prevention:** In the rare cases that there are duplicate entries in the sitemap we'll automatically remove them for you and return all URLs sorted alphabetically.&#x20;
* **Proxies:** Gaffa uses it's residential proxies behind the scenes to ensure your requests to retrieve sitemaps aren't blocked.

## Example Request

The [POST v1/site/map](../api-reference/post-v1-site-map.md) endpoint allows you to create a new request and await the result. It's a request with a simple payload containing the URL of the site you want to extract the sitemap of and a `max_cache_age` in milliseconds of a response you would accept returned from the cache, the default is 0 and Gaffa will never return a cached response if used.

```json
{
  "url": "https://gaffa.dev",
  "max_cache_age": 10000
}
```

{% hint style="info" %}
The request currently has a maximum running time of 60 seconds after which an error will be returned.
{% endhint %}

For the Gaffa site this will return the following response:

<pre class="language-json"><code class="lang-json">{
  "data": {
    "id": "smr_VQW4E66TdcQFZfCs6qavgdowPj3Bzk",
    "url": "https://gaffa.dev",
    "state": "completed",
    "credit_usage": 1,
    "from_cache": true,
    "started_at": "2025-08-22T11:05:43.328175Z",
    "completed_at": "2025-08-22T11:05:47.857941Z",
    "running_time": "00:00:04.5297660",
    "links": [
      "https://gaffa.dev",
      "https://gaffa.dev/about",
      "https://gaffa.dev/blog",
      "https://gaffa.dev/blog/convert-any-web-page-to-llm-ready-markdown-using-gaffa",
      "https://gaffa.dev/blog/how-to-extract-and-simplify-a-webpage-dom-with-gaffa",
      "https://gaffa.dev/blog/printing-webpages-to-pdf-html-to-pdf-using-gaffa",
      "https://gaffa.dev/docs",
      "https://gaffa.dev/docs/api-reference/api-authentication",
      ....and so on
    ],
    "link_count": 52
  }
<strong>}
</strong></code></pre>

As you'll see from the [API Reference section](/broken/pages/Jer3HvlR3KNzesxDbiIL) of the site there are also requests to retrieve site mapping requests for your account.

## Pricing

See the [Credits and Pricing page](../credits-and-pricing.md) for the current cost of mapping requests.
