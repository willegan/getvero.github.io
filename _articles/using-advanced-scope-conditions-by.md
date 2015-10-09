---
layout: articles
title:  Using advanced scope conditions
categories: campaigns
---

# Scope a behavioral email by event property (the advanced 'scope by' feature)

Vero's `scope by` filter is an advanced feature of behavioral campaigns. The best way to illustrate the `scope by` feature is an example.

Imagine you are an eCommerce store, selling products *A*, *B* and *C* and that you track an event in Vero called `Viewed product` whenever a customer views any of your products, whenever a customer purchases a product, you also track an event called `Purchased product`.

## An ordinary abandonment campaign

In this example, you would likely track the following event properties with your `Viewed product` and `Purchased product` events:

~~~json
{
  sku: '1234',
  price: 20.00,
  name: 'Product A',
}
~~~

You setup a behavioral campaign that targets users that view a product but don't purchase it. You might setup a campaign like this:

![{{ site.data.screenshots.vero.triggered-abandonment-campaign.title }}]({{  site.data.screenshots.vero.triggered-abandonment-campaign.image }})

If a customer triggered `Viewed product` for products *A*, *B* **and** *C*, this campaign would be triggered for evaluation three times. 

At run time, Vero will check the conditions. In the screenshot above, we can see that Vero will only send the email if the user has not triggered `Purchased product`. If you don't use the `scope by` feature, then if a customer triggers `Purchased product` for **any** of the products *A*, *B* or *C*, this email **will not be sent** as they will not meet the conditions.

## An abandonment campaign using 'scope by'

If you want to ensure that customers get your follow up email for **each of the products** they don't purchase independently, you can tell Vero to evaluate the conditions of the email scoping by an **event property**. For example, the property `sku` could be used to ensure the trigger event and any events in the conditions refer to the same product.

When evaluating the campaign, Vero will check that **both** the `Viewed product` and `Purchased product` events have the **exact same** `sku` value.

Here is an example of how you would configure this in Vero:

![{{ site.data.screenshots.vero.advanced-scope-by-triggered-email['title'] }}]({{  site.data.screenshots.vero.advanced-scope-by-triggered-email['image'] }})

In this scenario, if a customer viewed products *A*, *B* **and** *C* and then purchased product *A*, they would not get a follow up email for product *A*, but they would still get a follow up email for products *B* and *C*.