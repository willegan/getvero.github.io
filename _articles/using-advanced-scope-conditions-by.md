---
layout: articles
title:  "Using advanced scope conditions"
categories: campaigns
---

# Using advanced 'scope conditions by'

This is an advanced feature. Please email us if you need more assistance setting a campaign up.

The best way to illustrate Vero's scope conditions by feature is an example.

Imagine you are an eCommerce store, selling products A, B and C.

## An ordinary abandonment campaign

You track an event called 
Viewed product whenever a customer views any of your products. You also track event data with this event. For example, you might track the following data with your 
Viewed product event:

~~~json
{
  sku: '1234',
  price: 20.00,
  name: 'Product A',
}
~~~

Whenever a customer purchases a product, you also track an event called 
Purchased product. With this event you capture the exact same data for each product that was purchased.

You setup a 
behavioral campaign that targets users that view a product but don't purchase it. You might setup a campaign like this:

![{{ site.data.screenshots.vero.triggered-abandonment-campaign['title'] }}]({{  site.data.screenshots.vero.triggered-abandonment-campaign['image'] }})

If a customer triggered **Viewed product** for products A, B **and** C, this campaign would be triggered for evaluation each time.

**Ordinarily**, if you don't use scope conditions by then if a customer triggered Purchased product for any of the products A, B or C, this email **will not be sent out** as they will not meet the condition of **has not triggered Purchased product** (as per the screenshot).

## An abandonment campaign using 'scope conditions by'

This is where scope conditions by comes in.

If you want to ensure that customers get your follow up email for **each of the products** that they don't purchase, you can tell Vero to filter the emails based on a matching piece of **event data**, for example, the property sku that you have captured with both events.

When evaluating the campaign, Vero will check that **both** the Viewed product and Purchased product events have the **exact same** sku value.

Here is an example of how you would configure this exact campaign in Vero:

![{{ site.data.screenshots.vero.advanced-scope-by-triggered-email['title'] }}]({{  site.data.screenshots.vero.advanced-scope-by-triggered-email['image'] }})

In this scenario, if a customer viewed products A, B **and** C and then purchased product A, they would still get a follow up email for products B and C.