---
layout: articles
title:  Conversion tracking
categories: reporting
---

# Conversion tracking

## Defining a conversion event

Vero can track the conversions from an email campaign automatically.

You can track conversions for newsletters, behavioral or transactional emails. To do so, you must define which `event` will be considered a conversion when creating your campaign.

When creating a newsletter, you select the conversion `event` when editing the content of your newsletter as shown below:

![{{site.data.screenshots.vero.conversions.newsletter.title}}]({{site.data.screenshots.vero.conversions.newsletter.image}})

When creating a behavioral or transactional email, this is setup on the *Campaign snapshot* screen as shown below:

![{{site.data.screenshots.vero.conversions.behavioral.title}}]({{site.data.screenshots.vero.conversions.behavioral.image}})


## Conversion types

Once you have defined a conversion `event` Vero will start tracking conversions automatically.

Conversions are reported on the *Campaigns* screen and also on specific campaign reports. Vero tracks three different types of conversions.

1. **Direct conversion** are tracked when a recipient clicks on a link in one of your emails, returns to your site and takes an action in the **same session**. Vero handles this using `conv_id` parameter attached to links in your emails.
2. **View through conversions** are tracked when a user opens the email, does not click a link and returns to your site to complete the conversion event within a set time period. In this instance, we only track the conversion if it is within the conversion window and we assign it to the most recent campaign the user received **and** opened.
3. **Indirect conversions** are tracked when a user receives a campaign, **does not** open or click the email and later completes the conversion event on your website. The conversion is only tracked if it is within the conversion window and the conversion is assigned to the campaign most recently received by the user. Indirect conversions are useful when running an A/B test with hold-out groups (negative variations), so Vero can track the actions of contacts that are part of a hold-out group and therefore do not even receive a particular campaign.

You can customise the conversion window used to track view through and direct conversions by visiting *Settings > Advanced*.

By default, this window is set to `30 days`.

## Setting up direct conversion tracking with the Vero API

When using our Javascript library, Vero will automatically handle direct conversion tracking. Our Javascript library will recognise the `conv_id` parameter and assign it to any events tracked during that session, allowing Vero to track the conversion against the correct user and campaign.

If you are using one of Vero's backend libraries, you will need to manually store and refer to the `conv_id` parameter when tracking events.

To do this, grab and store the `conv_id` parameter in a temporary session cookie (if the parameter is present with a request).

You should then append this value with any event `track` request that you make to Vero whilst this cookie is set. To learn how to `track` an event, refer to our [API reference]({{site.data.links.vero_api}}).

When tracking an event you can append an array called `extras`. To track conversions correctly, insert the stored value from `conv_id` using the variable `vero_conv`.

Here's a basic example request:

    curl -X POST 'https://api.getvero.com/api/v2/events/track'
    \ -d auth_token="your_auth_token"
    \ -d identity='{"id": 1234, "email": "tyrion@lannister.com"}'
    \ -d event_name="Viewed product"
    \ -d data='{"product_name": "Red T-shirt", "product_url": "http://www.yourdomain.com/products/red-t-shirt"}'
    \ -d extras='{"vero_conv": "1234"}'

Once setup, you'll be successfully tracking conversions of all types.
