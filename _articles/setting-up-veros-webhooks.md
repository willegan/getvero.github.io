---
layout: articles
title:  Setting up Vero's Webhooks
categories: integrations
common_issues: true
---

# Setting up Vero's Webhooks

## Webhook Types

Vero provides webhooks for the following events:

- Sent (email has been sent by Vero)
- Delivered (email has been delievered to the recipient email server)
- Opened
- Clicked
- Bounced (hard and soft)
- Unsubscribed
- Customer updated

## Webhook Setup

All of Vero's webhooks are sent to a single notification address. To enable the webhooks, go to *Settings > Integrations > Webhooks* and enter the URL at which you wish to receive the webhooks.

![{{ site.data.screenshots.vero.webhook-setup['title'] }}]({{ site.data.screenshots.vero.webhook-setup['image'] }})

For testing, you should check out [Request Bin](http://requestb.in/) - it's a fantastic way to see the webhooks Vero (or any service) sends.

You can click the **Test URL** button and Vero will send an example of a webhook to the URL you've entered. This ensures Vero has registered the URL correctly and data arrives.

Once you have entered the URL you can choose which webhook events you want to track.

## Webhook format

### Webhooks for email events

Webhooks related to emails (sent, delivered, bounced, etc.) use the following format:

        {
            "type": "sent",
            "user": {
                "id": 12345,
                "email": "steve@getvero.com"
            },
            "campaign": {
                "id": 1235666234572456,
                "type": "behavioural",
                "name": "Cart Abandonment Followup",
                "subject": "You have items in your shopping bag",
                "trigger-event": "Abandoned cart",
                "permalink": "http://app.getvero.com/view/1/9c8c3ac6ac65736926a6da5aefbf852d",
                "variation": "Variation A"
             },
             "sent_at": 1435016238,
             "user_agent":"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)"
        }

Key things to note:

- The `sent_at`, `clicked_at`, `opened_at` field follows a very Ruby-esque pattern. The key will change based on the event sent (as outlined below).

- The `trigger-event` value will be present for Transactional and Behavioral campaigns and represents the event that triggered the campaign.

The follow table outlines each of the `type` values:

- `sent` – When an email has been sent by Vero
- `delivered` – When an email has been delivered to the ISP server
- `opened` – When a customer has opened an email
- `clicked` – When a customer has clicked an email
- `bounced` – When an email has not been delivered to the ISP server
- `unsubscribed` – When a customer has unsubscribed

### Webhook for customer updates

The webhook sent when a customer is updated shows the details of the changes made to that customer's properties or their tags. This allows you to update customer details in other systems, based on changes sent to Vero, keeping everything in sync.

    {
        "type":"user_updated",
        "user": {
            "id": 123456,
            "email":"damien@getvero.com"
        },
        "changes": {
            "_tags": {
              "add": ["test"],
              "remove": []
            },
            "first_name": "Chris"
        }
    }

If you have any other questions regarding setting up webhooks, please write us an email. We're here to help.