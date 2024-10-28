# Proxy Servers

Rather than having the pain of finding and integrating a third party proxy service we allow you to change the location of your browser request with a single `proxy_location` parameter in the request. With a simple change your request will be routed through one of our partner proxy services in your desired location.

## Available Locations

We currently support the following locations:

| Proxy Server Location | Country Code |
| --------------------- | ------------ |
| United States         | `us`         |
| Ireland               | `ie`         |
| Singapore             | `sg`         |

{% hint style="info" %}
At the moment all our servers are in one location but we aim to introduce local machines to our proxy locations for a more realistic end-user load times. If this would interest you please contact support.
{% endhint %}

Not setting `proxy_location` or setting it to `null` will mean the request does not use a proxy server and will use a generic datacenter IP.

## IP Types

Currently all our IP addresses are residential IP addresses which are procured through reputable and ethical third parties. However, due to the nature of residential proxy services we'd advise against performing tasks that require confidential information like passwords for the moment.

## IP Rotation

IP rotation is an essential part of any web data, scraping or automation task. In Gaffa, each browser request is treated as unique. We regularly rotate the IP addresses used so you should assume that each request will be carried out from a different IP address from the last.

{% hint style="info" %}
We are working to supporter a greater range of IP address scenarios, like static IPs in the future, as well as more trusted proxies for requests that require enhanced levels of security (logins etc.)
{% endhint %}

## Restrictions

Whilst we'll do our best to provide access to as wide a range of sites as possible we may have to restrict access to certain sites to prevent abuse of our service or of other services. Our proxy partners may also enforce restrictions on certain sites and categories of sites which we don't have any control over.&#x20;

{% hint style="info" %}
We are starting with a more restrictive number of sites users can access but will be working to expand access in a timely and responsible fashion.
{% endhint %}
