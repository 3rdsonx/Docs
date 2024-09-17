# Cache

When we were building Gaffa we noticed that a lot of pre-existing scraping tools don't allow users to easily share their scraped web data with each other, despite certainly many users requesting the same web pages on the same sites. Not only is this a waste of a user's allowance, it also puts a burden on the site owners who are serving the same data to different users for the same purpose. Because of this in Gaffa we have created a service-wide cache.

## Our Service-Wide Cache

When making a [**Browser Request**](api-endpoints/post-browser-requests.md) you can provide a `MaxCacheAge` parameter which is **a number in seconds equal or greater than 0**. This values denotes the maximum age of data you would accept from the API.\
\
If another user of our service has requested the same URL with exactly the same parameters and actions as you in this chosen timeframe then the response will be returned to you immediately and the response will not be carried out on one of our browsers. If there are multiple identical requests in the given timeframe then the most recent will be returned.\
\
This will save you time waiting for the response, as well as credits because requests returned from the cache directly are billed [at a reduced rate](../account/credits-and-pricing.md).
