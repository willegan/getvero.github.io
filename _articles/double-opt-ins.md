---
layout: articles
title:  "Setup double opt-ins"
categories: data
---
 
# Setup double opt-ins (deprecated)
    
Vero no longer has built-in support for double opt-ins. In line with our [Terms of Service]({{site.data.links.terms-of-service}}), we require all customers to collect explicit permission from their users before emailing them, and to comply with all relevant laws.

Below we've documented how to use our deprecated double opt-in functionality.

When enabled, our double opt-in functionality allows you to automatically email a customer when they fire their first behavioral email.

To configure your double opt-in email, first create a behavioral campaign. Create this behavioral campaign as you normally would, triggered by the relevant event (e.g. `Signed up`) and with any of the specific conditions you need.

To force Vero to automatically email an opt in email to the customer, with a confirmation link, add the condition `has opted in` to the campaign.

This tells Vero that before sending this automated campaign it first needs to send an email confirming that the user has confirmed their subscription. 

Here's the resulting workflow:

- User triggers an `event`, such as `Signed up`, triggering the behavioral campaign.
- Vero checks the conditions on your automated campaign and sees that the user must fulfil the condition `has opted in` before sending the automated email.
- Vero emails the customer the opt in email you've written. 
- If the user clicks the confirmation link and opts in, Vero automatically sends the behavioral campaign. 
- If the user does not confirm their opt in, Vero does nothing.

## Editing the opt in email
You can easily edit your opt in via *Settings > Opt In* menu.

![{{site.data.screenshots.vero.settings.opt-in.title}}]({{site.data.screenshots.vero.settings.opt-in.image}})

When editing your opt in campaign, you **must** include the dynamic variable `{{url.opt_in}}` so that Vero actually inserts the confirmation URL.
                
