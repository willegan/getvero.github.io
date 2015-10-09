---
layout: articles
title: Inserting merge tags using Liquid in my emails
categories: email design
common_issues: true
---

# Inserting dynamic data with merge tags (using Liquid)

You can merge customer and event properties into outgoing emails in Vero.

To provide you with powerful templating options Vero uses Liquid, an open-source templating language created by Shopify. You can use Liquid to load dynamic content in your emails based on the data you have stored in Vero. 

## Merging basic data

In Vero, we use a prefix within the standard Liquid `{% raw %}{{{% endraw %}` template fields to denote where to load the data from. The two main prefixes for loading customer data:


1. `{% raw %}{{user.property}}{% endraw %}` replace attribute with the name of any customer property that you've captured using the Vero API or uploaded via CSV. For example, `{% raw %}{{user.first_name}}{% endraw %}` would print `John` for a user profile that has the attribute `first_name` with value `John`.
2. `{% raw %}{{event.property}}{% endraw %}` replace attribute with the name of any event property you've captured with our API or uploaded via CSV. For example, `{% raw %}{{event.product_name}}{% endraw %}` would print `Apple MacBook Pro` for an event that has the attribute `product_name` with value `Apple MacBook Pro`. **Note** that you can only access event attributes for the trigger event of a triggered email.

The prefixes `user.` and `event.` indicate whether the `property` being loaded is stored against the customer's profile as a customer property or against an event the user has triggered. 

Merge tags are replaced dynamically with the correct data when an email is prepared to be sent.

## Merging event properties in emails

For example, **Reba viewed Red Shoes** would be `{% raw %}{{user.first_name}}{% endraw %} viewed {% raw %}{{event.product_viewed}}{% endraw %}`.

You can only insert event properties attached to the base event - that is, the event that triggers a Behavioral or Transactional campaign. You can view the list of properties you already track using our API by visiting the Logs page in Vero and selecting **View Data** under the drop down associated with a particular event line item.

For example: the event *added product to cart* might have a number of properties including `product_name` and `image_url`.

When creating campaigns in Vero – whether you're using templates or standard rich text – you can insert dynamic variables using the Liquid Templating Language.

With all of the following variables, you can use the fallback option, such as `{% raw %}{{user.first_name | fallback: 'there'}}{% endraw %}` as the option to use if the value is blank.

## Vero specific merge data

There are some merge fields that support key Vero fucntions, including Vero's one-click unsubscribe and *View in browser* (permalink) tools.

The following is a list of the key variables and functions you can use:

- `{% raw %}{{url.unsubscribe_link}}{% endraw %}` inserts a URL (e.g. `http://getvero.com/unsubscribe/xyz`) that unsubscribes your customers in one click.
- `{% raw %}{{url.unsubscribe}}{% endraw %}` inserts an anchor `<a>` tag containing the string `Unsubscribe` and pointing to the link referenced by `{% raw %}{{url.unsubscribe_link}}{% endraw %}` above.
- `{% raw %}{{url.permalink_link}}{% endraw %}` inserts a URL (e.g. `http://getvero.com/view-online/xyz`) that points to an online, hosted version of each individual email that is sent through Vero.
- `{% raw %}{{url.permalink}}{% endraw %}` inserts an anchor `<a>` tag containing the string `View in browser` and pointing to the link referenced by `{% raw %}{{url.permalink_link}}{% endraw %}` above.

## Using Liquid functions

Vero is a complex and powerful templating language. Vero supports most of the functions outlined in the [Liquid for Designers]({{site.data.links.liquid_for_designers}}) documentation. 

We have extended the default functionality with a series of custom Liquid functions designed to help build better emails whilst making your life easier. We outline each of our custom functions in more detail in our article [Custom Liquid Functions]({{site.data.links.list_of_liquid_functions}}).

- `{% raw %}{{ user.email | encode }}{% endraw %}` allows you to URL encode the provided value. If `user.email` was equal to `damien+test@getvero.com` it would be rendered as `damien%2Btest%40getvero.com` after encoding.
- `{% raw %}{{event.invoice_ref | format: '%05d'}}{% endraw %}` allows you to reformat numerical variables (integers, floats, octal numbers, strings, unsigned decimals and hexadecimals). You can use any formatting from the print format cheat sheet.
- `{% raw %}{{event.price | precision: 2}}{% endraw %}` allows you to change the precision of integers. As an example, `2.0554` would become `2.06` with a precision of two.
- `{% raw %}{{event.price | delimiter: ',' }}{% endraw %}` allows you to format numbers so that they include commas. For example, you could do `{% raw %}{{ 4000 | delimiter: ',' }}{% endraw %}` and we'd render `4,000`.
- `{% raw %}{{ event.purchase_date | time_zone: 'Sydney' | date: '%d/%m/%Y %H:%M:%S %Z' }}{% endraw %}` allows you to change the timezone and format of an attribute. The attribute must be a number. You can use any of the timezone values from the TZ column of this guide to timezones. This time formatting tool can help you build the formatting string for output.
- `{% raw %}{{ extra.time.now | date: '%Y' }}{% endraw %}` gives you the current year. This is commonly used in copyright footers.

## Inserting even more powerful data in your emails

There are times when you'll want to go beyond the data you can push into Vero using our API.

Imagine the scenario where you have triggered a behavioral email three days after a user has taken a specific action, yet want to include the **latest** products available in your store. 

Imagine the scenario you want to send an email every Tuesday and pull in the latest articles from your blog.

Vero's most powerful dynamic templating functionality is called *External Attributes* and allows you to pull in data from JSON and HTML API feeds **just before an individual email is sent**.

This allows you to pull in the most real time data possible. You can learn more by reading our full help article on [External Attributes]({{site.data.links.external_attributes}}).