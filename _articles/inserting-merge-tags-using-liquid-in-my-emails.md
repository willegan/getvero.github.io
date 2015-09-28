---
layout: articles
title:  "Inserting merge tags using liquid in my emails"
categories: "email design 'common issues'"
---

#What is the Liquid templating language?

Liquid is an open-source, Ruby-based template language created by Shopify. You can use it to load dynamic content in your emails based on the data you have stored in Vero. In Vero there are two types of attributes you can add to your emails:

- User properties
- Event properties

Users have Properties but can also trigger lots of Events. Each those Events can have their own properties (or attributes). Liquid allows you to insert a variable in your template using the format `{% raw %}{{property}}{% endraw %}`.

##How does Liquid work?
In Vero, we use a prefix to denote where the data comes from. Specifically the contact or the event. The two prefixes are:

`{% raw %}{{user.property}}{% endraw %}`
`{% raw %}{{event.property}}{% endraw %}`

`user.` and `event.` indicate whether the property is stored with the user profile or with the base event. The merge tags will be replaced dynamically with the data based on the type of property that you want to appear in the email.

For example, **Reba viewed Red Shoes** would be `{% raw %}{{user.first_name}}{% endraw %} viewed {% raw %}{{event.product_viewed}}{% endraw %}`.

You can only insert event properties attached to the base event - that is, the event that triggers a Behavioral or Transactional campaign. You can view the list of properties you already track using our API by visiting the Logs page in Vero and selecting **View Data** under the drop down associated with a particular event line item.

For example: the event *added product to cart* might have a number of properties including `product_name` and `image_url`.

When creating campaigns in Vero – whether you're using templates or standard rich text – you can insert dynamic variables using the Liquid Templating Language.

With all of the following variables, you can use the fallback option, such as `{% raw %}{{user.first_name | fallback: 'there'}}{% endraw %}` as the option to use if the value is blank.

##A list of key variables to use

Here's a list of the key variables and functions you can use:

- `{% raw %}{{user.attribute}}{% endraw %}` replace attribute with the name of any user attribute you've captured with our API or uploaded via CSV. For example, `{% raw %}{{user.first_name}}{% endraw %}` would print John for a user profile that has the attribute first_name with value John.
- `{% raw %}{{event.attribute}}{% endraw %}` replace attribute with the name of any event attribute you've captured with our API or uploaded via CSV. For example, `{% raw %}{{event.product_name}}{% endraw %}` would print Apple MacBook Pro for an event that has the attribute product_name with value Apple MacBook Pro. Note that you can only access event attributea for the trigger event of a triggered email.
- `{% raw %}{{url.unsubscribe_link}}{% endraw %}` inserts a direct URL (e.g. http://getvero.com/unsubscribe/xyz) that unsubscribes your customers in one click.
- `{% raw %}{{url.unsubscribe}}{% endraw %}` inserts an actual link with the word Unsubscribe and points to the link referenced by `{% raw %}{{url.unsubscribe_link}}{% endraw %}` above.
- `{% raw %}{{url.permalink_link}}{% endraw %}` inserts a direct URL (e.g. http://getvero.com/view-online/xyz) that points to an online, hosted version of each individual user.
- `{% raw %}{{url.permalink}}{% endraw %}` inserts an actual link with the words View in browser and points to the link referenced by {{url.permalink_link}} above.

We have also written a series of custom Liquid functions to make your life easier:

- `{% raw %}{{ user.email | encode }}{% endraw %}` allows you to URL encode the provided value. If user.email was equal to damien+test@getvero.com it would be rendered as damien%2Btest%40getvero.com after encoding.
- `{% raw %}{{event.invoice_ref | format: '%05d'}}{% endraw %}` allows you to reformat numerical variables (integers, floats, octal numbers, strings, unsigned decimals and hexadecimals). You can use any formatting from the print format cheat sheet.
- `{% raw %}{{event.price | precision: 2}}{% endraw %}` allows you to change the precision of integers. As an example, 2.0554 would become 2.06 with a precision of two.
- `{% raw %}{{event.price | delimiter: ',' }}{% endraw %}` allows you to format numbers so that they include commas. For example, you could do `{% raw %}{{ 4000 | delimiter: ',' }}{% endraw %}` and we'd render `4,000`.
- `{% raw %}{{ event.purchase_date | time_zone: 'Sydney' | date: '%d/%m/%Y %H:%M:%S %Z' }}{% endraw %}` allows you to change the timezone and format of an attribute. The attribute must be a number. You can use any of the timezone values from the TZ column of this guide to timezones. This time formatting tool can help you build the formatting string for output.
- `{% raw %}{{ extra.time.now | date: '%Y' }}{% endraw %}` gives you the current year. This is commonly used in copyright footers.

We have some custom functions for our External Attributes feature specifically:

`{% raw %}{% fetch_html | ' http://yourdomain.com/page.html?params= {{user.id}}' %}{% endraw %}` allows you to pull custom HTML data into your emails from your own web server.