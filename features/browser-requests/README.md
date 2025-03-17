---
description: Making web automation requests has never been so simple.
---

# Browser Requests

Browser Requests are our first main product and allow you to send the Gaffa API a URL and a list of actions you want to be carried out, including any outputs you want from the page. We'll carry out the request on our cloud browsers and return you the response with no need to worry about proxies, IP rotation, web automation frameworks and scaling.&#x20;

There's absolutely zero configuration needed and you can interact with Gaffa from any program that can send web requests. We think it's by far the simplest way to automate simple web tasks and the good news is, we're just getting started and have much more planned.

***

## Example request

Running a new browser request is as simple as sending the following [POST body to our endpoint](../../api-reference/post-v1-browser-request.md).  Below, you can see the url ([our demo site](https://demo.gaffa.dev)) and a list of actions which instruct Gaffa to wait for a table to load and print the page to PDF. &#x20;

{% hint style="info" %}
You can read more about this particular example and how you can run it right now in our API Playground [here](api-playground-examples/export-web-page-to-pdf.md)
{% endhint %}

```json
{
  "url": "https://demo.gaffa.dev/simulate/table?loadTime=3&rowCount=20",
  "proxy_location": null,
  "async": false,
  "max_cache_age": 0,
  "max_media_bandwidth": null,
  "settings": {
    "record_request": false,
    "actions": [
      {
        "type": "wait",
        "selector": "table"
      },
      {
        "type": "print",
        "size": "A4",
        "margin": 20,
        "orientation": "portrait"
      }
    ]
  }
}
```

***

## Proxy servers

{% hint style="info" %}
In order to access public sites and use proxy servers you'll need to sign up for a [paid account](https://gaffa.dev/#pricing) but after that you'll be able to build automations for any site you wish. &#x20;
{% endhint %}

Gaffa makes proxying your traffic through a global network of residential proxies super simple. Setting `proxy_location` in your request will allow you to utilize one of our partner third party proxy services to gain local access to a site.&#x20;

Not setting a `proxy_location` will mean the request does not use a proxy server and will use a generic datacenter IP.

### Available Locations

| Proxy Server Location | Country Code |
| --------------------- | ------------ |
| United States         | `us`         |
| Ireland               | `ie`         |
| Singapore             | `sg`         |
| France                | `fr`         |

{% hint style="info" %}
At the moment all our servers are in one location but we aim to introduce local machines to our proxy locations for a more realistic end-user load times. If this would interest you please contact support.
{% endhint %}

### IP Types

Currently all our IP addresses are residential IP addresses which are procured through reputable third parties.

### IP Rotation

IP rotation is an essential part of any web data, scraping or automation task. In Gaffa, each browser request is treated as unique. We regularly rotate the IP addresses used so you should assume that each request will be carried out from a different IP address from the last.

{% hint style="info" %}
We are working to supporter a greater range of IP address scenarios, like static IPs in the future, as well as more trusted proxies for requests that require enhanced levels of security (logins etc.)
{% endhint %}

### Restrictions

Whilst we'll do our best to provide access to as wide a range of sites as possible we may have to restrict access to certain sites to prevent abuse of our service or of other services. Our proxy partners may also enforce restrictions on certain sites and categories of sites which we don't have any control over.&#x20;

***

## Caching

When we were building Gaffa we noticed that a lot of pre-existing scraping tools don't allow users to easily share their scraped web data with each other, despite many users requesting the same web pages on the same sites. Not only is this a waste of a user's allowance, it also puts a burden on the site owners who are serving the same data to different users for the same purpose. Because of this in Gaffa we have created a service-wide cache.

### How it works

When making a browser request you can provide a `MaxCacheAge` parameter which is **a number in seconds equal or greater than 0**. This values denotes the maximum age of data you would accept from the API.\
\
If another user of our service has requested the same URL with exactly the same parameters and actions as you in this chosen timeframe then the response will be returned to you immediately and the response will not be carried out on one of our browsers. If there are multiple identical requests in the given timeframe then the most recent will be returned.\
\
This will save you time waiting for the response, as well as credits, because requests returned from the cache don't use any bandwidth.

***

## Screen Recording

By specifying `record_request` you can ask Gaffa to screen record your automation and return a video in the response allowing you to view the magic happening or to debug your automation.

Recording requests comes at an [additional cost](../../credits-and-pricing.md).

***

## Max Media Bandwidth

If you are using Gaffa on a site with lots of images and videos and more interested in the text data on the page, you can cap how much data a page loads in MB using the `max_media_bandwidth` setting. This makes your automation faster and prevents spending credits on data you aren't interested in.\
\
With the `max_media_bandwidth` value set, Gaffa monitors data being downloaded by the page and when downloaded data exceeds the given number of MB, all further downloads of images or video will be cancelled. \
\
`max_media_bandwidth` defaults to `null` meaning downloads are not capped.

{% hint style="info" %}
Setting a value of 0 will cause no images to load which can work on some sites but on others this could lead to the site thinking you are using an ad blocker.
{% endhint %}

***

## Time Limit

Using the setting `time_limit` caps the maximum running time of the request in milliseconds. If this time expires all incomplete actions will be cancelled and the request will return an error. This cap has to be less than the maximum request running time dictated by your plan and if not set, will default to this value.

***

## Actions

We currently support ten different types of actions which you can read more about [here](actions/).

***

## Stealth

We believe your AI Agents should be able to use the internet exactly how humans would. Gaffa can help you get access to sites with some of the most challenging anti-bot restrictions using a combination of proxies, human-like behavior, captcha solving and a custom browser implementation. We handle and maintain all of that so you can focus on building your solution!&#x20;

***

## Examples

We've created a number of sample browser requests you can read about [here](api-playground-examples/) or you can jump straight into the [API Playground](https://gaffa.dev/dashboard/playground) to start running them right now.

***

## API Endpoints

Check out our API reference for more details about the endpoints available, particularly [those you can use to query for past requests by id or status](../../api-reference/get-v1-browser-requests.md).
