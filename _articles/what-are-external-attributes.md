---
layout: articles
title:  "What are External Attributes?"
categories: "data"
---

# What are External Attributes?

Vero's External Attributes feature allows you to pull data from your own API or web endpoints so you can personalize your emails on a truly one-to-one basis.

This feature allows you to pull custom data that is not already tracked from your site and into Vero, by using data from your own web server and includes it in an email before it is sent to your customers.

Example use cases:

- You'd like to send off the top 5 new products in your store that day.
- You'd like to show relevant items based on the current stock.
- You'd like to send customized content for each demographic (ie products based on location or even different languages)

You can pull data in two ways:

## Returning HTML

To do this you use a custom filter we've built using the [Liquid templating language]({{ site.data.links['liquid_docs']}}).

This method allows you to pass data stored in Vero back to your server so that you can manipulate it and send back some custom HTML. The custom HTML that is returned is **inserted into the body of your email exactly where you place the following tag:**

{% raw %}
**{% fetch_html 'https://www.domain.com/endpoint' %}**
{% endraw %}

Here is an example. In this example we pass back both a customer-level attribute and an event-level attribute. This data can then be used by your server!

You should of course replace the domain in this example with whatever URL you prefer. This URL should return raw HTML that will be dumped into the body of your HTML campaign **exactly** as it is returned.

{% raw %}
**{% fetch_html 'https://www.domain.com?param={{user.id}}&param2={{event.number_of_widgets}}' %}**
{% endraw %}

Here is how you might insert this code into the body of your email:

![{{ site.data.screenshots.vero.fetch-html['title'] }}]({{ site.data.screenshots.vero.fetch-html['image'] }})

This would then be replaced with the correct HTML upon sending.

## Returning JSON

Alternately, you can include an API end-point and pull JSON data from your web server to be used when creating a campaign via our {% raw %}**{{external}}**{% endraw %} merge tag.

If you have External Attributes enabled for your account, you will find it in the drop down beneath the content section of your campaign builder:

![{{ site.data.screenshots.vero.external-attributes['title'] }}]({{ site.data.screenshots.vero.external-attributes['image'] }})

Place the API endpoint into the External Attributes section. For example, if the endpoint was: http://jsonplaceholder.typicode.com/posts/1

The contents of the endpoint would show:

![{{ site.data.screenshots.vero.json-data['title'] }}]({{ site.data.screenshots.vero.json-data['image'] }})

Then, when you place {{external.title}} inside of your content (or template as well), the result in the preview would show the title pulled in like so:

![{{ site.data.screenshots.vero.external-attributes-preview['title'] }}]({{ site.data.screenshots.vero.external-attributes-preview['image'] }})

This is a basic case, but additional ones like the ones mentioned above, or even full html creative sections could be pulled in as you'd like.

External Attributes is an advanced feature. Please get in touch with our 
[support team via email](mailto:support@getvero.com) so we can show you it in action.