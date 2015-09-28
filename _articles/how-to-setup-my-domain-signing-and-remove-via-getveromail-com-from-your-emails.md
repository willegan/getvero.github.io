---
layout: articles
title:  "Setup domain signing and remove 'via xyz.com' from your emails"
categories: "deliverability"
---

# Setup domain signing and remove 'via xyz.com' from your emails

By default, Vero will send your emails using a shared IP and domain configuration. We use a variety of domains and tiers to help ensure we get customers emails into inboxes. We work with [Mailgun]({{site.data.links.mailgun}}) to deliver your emails.

To improve your deliverability, we recommend setting up domain signing. This tells your recipients' mail servers that you are authenticated to send from your domain.

This also means that Vero is truly invisible to your customers.

## Sending without DNS verification

When you first sign up to Vero, your emails will look something like this:

![via-getvero](https://www.getvero.com/wp-content/uploads/2014/08/via-getvero.png)

Email clients will show this because the domain of the *From address* used to send the email, `test@chrishexton.com` in the example above, does not match the domain of the server that sent the email, `getvero.com` in the example above.

By setting up your Vero DNS records your recipients will no longer see the `via xyz.com` message.

Note that you might see `via getveromail.com`, `via veromailer.com` or some other domain as we send from multiple domains to ensure maximum deliverability for all our customers.

## Add your DNS records

To sign your domain you will need to add two to three records to your domain's DNS configuration.

Add the domain you want to send from under *Settings > Project Details* in Vero. 

Once this is done, visit *Settings > Email Delivery* and select *Request DNS records*. Vero will then generate the DKIM, CNAME and MX records you need to add to your domain to show that you are authenticated to use it for sending.)

![{{site.data.screenshots.vero.settings.email-delivery.unverified.title}}]({{site.data.screenshots.vero.settings.email-delivery.unverified.image}})

To add the DNS records to your domain, you'll need to look at the how to for your specific domain host. Googling "Setup DNS records" is typically the fastest way to find your provider's specific instructions. If you need a hand, just [email us]({{site.data.links.email_us}}).

### Settings up a custom CNAME

By default, we provide a CNAME record for the subdomain `email.yourdomain.com`. This CNAME is used to track links. 

If you already have a CNAME setup on the `email` subdomain, please [email us]({{site.data.links.email_us}}) and we will update the subdomain to something else that works for you.

## Verify your records

Once you have added the DNS records to your domain, return to *Settings > Email Delivery* and select the *Verify DNS* link.the 
Verify DNS Records button.

![{{site.data.screenshots.vero.settings.email-delivery.verified.title}}]({{site.data.screenshots.vero.settings.email-delivery.verified.image}})

Vero will check, in real time, that the DNS records are setup correctly on your domain. Once setup correctly, Vero will make your configuration as `Good` meaning everything is setup correctly. At this point, emails will begin going out from the domain you have elected.

Note that it can take as many as 24 hours for your DNS records to propagate and for Vero to recognise the valid records.

From now on you will no longer see the `via xyz.com` message in your outgoing emails.