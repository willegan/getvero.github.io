#How do I insert merge tags (using Liquid) in my emails?

Liquid is an open-source, Ruby-based template language created by Shopify. You can use it to load dynamic content in your emails based on the data you have stored in Vero. In Vero there are two types of attributes you can add to your emails:

- User properties
- Event properties

Users have Properties but can also trigger lots of Events. Each those Events can have their own properties (or attributes). Liquid allows you to insert a variable in your template using the format {{attribute}}.

In Vero, we use a prefix to denote where the data comes from. Specifically the contact or the event. The two prefixes are:

`{{user.attribute}}`
`{{event.attribute}}`

`user.` and `event.` indicate whether the attribute is stored with the contract or with the base event. The merge tags will be replaced dynamically with the data based on the type of property that you want to appear in the email.

For example, `Reba viewed Red Shoes` would be `{{user.first_name}} viewed {{event.product_viewed}}`.

You can only insert event attributes attached to the base event - that is, the event that triggers a Behavioral or Transactional campaign. You can view the list of attributes you already track using our API by visiting the Logs page in Vero and selecting View Data under the drop down associated with a particular event line item.

For example: the event User added product to cart might have a number of attributes including `product_name` and `image_url`.

When creating campaigns in Vero – whether you're using templates or standard rich text – you can insert dynamic variables using the Liquid Templating Language.

With all of the following variables, you can use the fallback option, such as `{{user.first_name | fallback: 'there'}}` as the option to use if the value is blank.

Here's a list of the key variables and functions you can use:

- `{{user.attribute}}` replace attribute with the name of any user attribute you've captured with our API or uploaded via CSV. For example, {{user.first_name}} would print John for a user profile that has the attribute first_name with value John.
- `{{event.attribute}}` replace attribute with the name of any event attribute you've captured with our API or uploaded via CSV. For example, {{event.product_name}} would print Apple MacBook Pro for an event that has the attribute product_name with value Apple MacBook Pro. Note that you can only access event attributea for the trigger event of a triggered email.
- `{{url.unsubscribe_link}}` inserts a direct URL (e.g. http://getvero.com/unsubscribe/xyz) that unsubscribes your customers in one click.
- `{{url.unsubscribe}}` inserts an actual link with the word Unsubscribe and points to the link referenced by {{url.unsubscribe_link}} above.
- `{{url.permalink_link}}` inserts a direct URL (e.g. http://getvero.com/view-online/xyz) that points to an online, hosted version of each individual user.
- `{{url.permalink}}` inserts an actual link with the words View in browser and points to the link referenced by {{url.permalink_link}} above.

We have also written a series of custom Liquid functions to make your life easier:

- `{{ user.email | encode }}` allows you to URL encode the provided value. If user.email was equal to damien+test@getvero.com it would be rendered as damien%2Btest%40getvero.com after encoding.
- `{{event.invoice_ref | format: '%05d'}}` allows you to reformat numerical variables (integers, floats, octal numbers, strings, unsigned decimals and hexadecimals). You can use any formatting from the print format cheat sheet.
- `{{event.price | precision: 2}}` allows you to change the precision of integers. As an example, 2.0554 would become 2.06 with a precision of two.
- `{{event.price | delimiter: ',' }}` allows you to format numbers so that they include commas. For example, you could do `{{ 4000 | delimiter: ',' }}` and we'd render `4,000`.
- `{{ event.purchase_date | time_zone: 'Sydney' | date: '%d/%m/%Y %H:%M:%S %Z' }}` allows you to change the timezone and format of an attribute. The attribute must be a number. You can use any of the timezone values from the TZ column of this guide to timezones. This time formatting tool can help you build the formatting string for output.
- `{{ extra.time.now | date: '%Y' }}` gives you the current year. This is commonly used in copyright footers.
We have some custom functions for our External Attributes feature specifically:

`{% fetch_html | ' http://yourdomain.com/page.html?params= {{user.id}}' %}` allows you to pull custom HTML data into your emails from your own web server.