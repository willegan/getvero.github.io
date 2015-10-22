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

### Webhooks structure for email events

The follow list outlines each of the `type` values:

- `sent` – When an email has been sent by Vero
- `delivered` – When an email has been delivered to the ISP server
- `opened` – When a customer has opened an email
- `clicked` – When a customer has clicked an email
- `bounced` – When an email has not been delivered to the ISP server
- `unsubscribed` – When a customer has unsubscribed

**Sent:**

        {
            "sent_at":1435016238,
            "type":"sent",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "campaign": {
                "id":987,
                "type":"transactional",
                "name":"Order confirmation",
                "subject":"Your order is being processed!",
                "trigger-event":"purchased item",
                "permalink":"http://app.getvero.com/view/1/341d64944577ac1f70f560e37db54a25",
                "variation":"Variation A"
            }
        }

**Delivered:**

        {
            "delivered_at":1435016238,
            "type":"delivered",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "campaign": {
                "id":987,
                "type":"transactional",
                "name":"Order confirmation",
                "subject":"Your order is being processed!",
                "trigger-event":"purchased item",
                "permalink":"http://app.getvero.com/view/1/341d64944577ac1f70f560e37db54a25",
                "variation":"Variation A"
            }
        }

**Opened:**

        {
            "opened_at":1435016238,
            "user_agent":"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)",
            "type":"opened",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "campaign": {
                "id":987,
                "type":"transactional",
                "name":"Order confirmation",
                "subject":"Your order is being processed!",
                "trigger-event":"purchased item",
                "permalink":"http://app.getvero.com/view/1/341d64944577ac1f70f560e37db54a25",
                "variation":"Variation A"
            }
        }

**Clicked:**
        
        {
            "clicked_at":1435016238,
            "user_agent":"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)",
            "type":"clicked",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "campaign": {
                "id":987,
                "type":"transactional",
                "name":"Order confirmation",
                "subject":"Your order is being processed!",
                "trigger-event":"purchased item",
                "permalink":"http://app.getvero.com/view/1/341d64944577ac1f70f560e37db54a25",
                "variation":"Variation A"
            }
        }

**Bounced:**
        
        {
            "bounced_at":1435016238,
            "bounce_type":"hard",
            "type":"bounced",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "campaign": {
                "id":987,
                "type":"transactional",
                "name":"Order confirmation",
                "subject":"Your order is being processed!",
                "trigger-event":"purchased item",
                "permalink":"http://app.getvero.com/view/1/341d64944577ac1f70f560e37db54a25",
                "variation":"Variation A"
            }
        }

**Unsubscribed:**

        {
            "unsubscribed_at":1435016238,
            "type":"unsubscribed",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            }
        }

Key things to note:

- The `trigger-event` value will be present for Transactional and Behavioral campaigns and represents the event that triggered the campaign.

### Webhook structure for customer updates

The webhook sent when a customer is created or updated shows the details of that customer or the changes made to that customer's properties or their tags. This allows you to update customer details in other systems, based on changes sent to Vero, keeping everything in sync.

**User created:**

        {
            "type":"user_created",
            "user": {
                "firstname":"Steve",
                "company":"Vero",
                "role":"Bot",
                "id":123,
                "email":"steve@getvero.com"
            }
        }

**User updated:**

        {
            "type":"user_updated",
            "user": {
                "id":123,
                "email":"steve@getvero.com"
            },
            "changes": {
                "_tags": {
                    "add": ["active-customer"],
                    "remove":["unactive-180-days"]
                }
            }
        }

If you have any other questions regarding setting up webhooks, please write us an email. We're here to help.