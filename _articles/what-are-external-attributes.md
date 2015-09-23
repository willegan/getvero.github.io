#What are External Attributes?Vero's External Attributes feature allows you to pull data from your own API or web endpoints so you can personalize your emails on a truly one-to-one basis.

This feature allows you to pull custom data that is not already tracked from your site and into Vero, by using data from your own web server and includes it in an email before it is sent to your users.

Example use cases:

- You'd like to send off the top 5 new products in your store that day.
- You'd like to assign different custom projects to users and have each user be in a different group you manage.
- You'd like to send customized content for each demographic (ie products based on location or even different languages)

You can pull data in two ways:

**As HTML.** To do this you use a custom filter we've built using the [Liquid templating language](https://docs.shopify.com/themes/liquid-documentation/basics).

This method allows you to pass data stored in Vero back to your server so that you can manipulate it and send back some custom HTML. The custom HTML that is returned is **inserted into the body of your email exactly where you place the {% fetch_html %} templating tag.**

Here is an example. In this example we pass back both a user-level attribute and an event-level attribute. This data can then be used by your server!

You should of course replace the domain in this example with whatever URL you prefer. This URL should return raw HTML that will be dumped into the body of your HTML campaign **exactly** as it is returned.

    {% fetch_html | 'http://www.domain.com?param={{user.id}}&param2={{event.number_of_widgets}}' %}

Here is how you might insert this code into the body of your email:

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3321/Screen_Shot_2014-01-28_at_12.55.22_pm.png)

This would then be replaced with the correct HTML upon sending.

**As JSON.** Alternately, you can include an API end-point and pull JSON data from your web server to be used when creating a campaign via our `{{external}}` merge tag. Read how we use [merge tags here](http://www.getvero.com/help/designing-an-email/how-do-i-insert-merge-tags-using-liquid-in-my-emails/).

If you have External Attributes enabled for your account, you will find it in the drop down beneath the content section of your campaign builder:

![External Attributes Screenshot](https://www.getvero.com/wp-content/uploads/2015/02/external_attributes_title_example-1024x619.png)

Place the API endpoint into the External Attributes section. For example, if the endpoint was: http://jsonplaceholder.typicode.com/posts/1

The contents of the endpoint would show:

![External Attributes JSON Example](https://www.getvero.com/wp-content/uploads/2015/02/External-Attributes-JSON-Example-1024x157.png)

Then, when you place {{external.title}} inside of your content (or template as well), the result in the preview would show the title pulled in like so:

![External Attributes Email Preview](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-07-21-at-1.55.07-PM1.png)

This is a basic case, but additional ones like the ones mentioned above, or even full html creative sections could be pulled in as you'd like.

External Attributes is an advanced feature. Please get in touch with our 
[support team via email](mailto:support@getvero.com) so we can show you it in action.