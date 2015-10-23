---
layout: articles
title:  Automatically unsubscribing emails that have bounced
categories: deliverability
---

# Automatically unsubscribing emails that have bounced

Vero automatically handles the subscription status of customers whose emails bounce.

## Hard bounces

A hard bounce occurs when an email is rejected by the recieving mail server because the recipient's email address is invalid, disabled, inactive or otherwise permanently unavailable. 

Vero automatically unsubscribes customers whose email addresses are marked with a hard bounce. Currently, this is only managed with Vero's default sending configuration or when you plug your Vero account into Mailgun. 

![{{site.data.screenshots.vero.customers.bounced.title}}]({{site.data.screenshots.vero.customers.bounced.image}})

Vero will mark customers with invalid emails using a warning. You can see this when viewing an individual customer's profile.

In the near future we will support this with our Sendgrid, Mandrill and Dyn integrations.

## A soft bounce

A soft bounce is a a temporary email delivery failure. They occur when the recipient's mail server returns that it cannot, at this time, receive emails on behalf of the recipient. 

A soft bounce can occur for a number of reasons:

- The recipient's mailbox is full,
- The receiving server is down or swamped with messages,
- The message size is too large,
- The recipient's settings do not allow for email from the sender, 
- Suspicious or spammy content has been detected.

When an email address returns a soft bounce for five consecutive sends across a 30 day period, Vero automatically marks the customer as unsubscribed. The user is then marked as bounced, as per the details in the *Hard bounces* section above.