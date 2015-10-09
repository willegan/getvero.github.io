---
layout: articles
title:  "Using Zapier with Vero"
categories: integrations
---

# Using Zapier with Vero

Zapier makes it easy to add customers and their properties as well as tracking events.

One of the things that distinguishes Vero as a platform for communicating effectively with your customers is that it is a central data store of all of your customer interactions. By tracking who your customers are and what they do, Vero enables you to trigger automated campaigns, send more segmented one-off emails and get a better understanding of your customer base.

This guide will explain how you can use the Vero Zap.

## Tracking events

In Zapier, an action is trigger by an event. For example, if you created the following Zap:

![{{ site.data.screenshots.zapier.trigger-action['title'] }}]({{ site.data.screenshots.zapier.trigger-action['image'] }})

...the Action is the right hand side – it is the adding of a customer profile in Vero.

The Vero Zapier plugin has the following actions available.

### The basics

Every action of the Vero Zapier plugin requires that you provide at least a unique customer ID. Some also allow you to provide an email.

**Note:** the customer's ID must be unique and many Vero customers simply use the customer's email for the ID field. These are used to identify and update the customer's profile in Vero.

Mapping email in Zapier:

![{{ site.data.screenshots.zapier.add-customer['title'] }}]({{ site.data.screenshots.zapier.add-customer['image'] }})

Result in Vero:

![{{ site.data.screenshots.vero.customer-properties['title'] }}]({{ site.data.screenshots.vero.customer-properties['image'] }})

### Create a customer

This action adds or updates a customer's profile in Vero. After providing a customer's ID and email as above, you can provide any custom customer properties that you want to using the fields provided by Zapier. Customer properties are either created or updated (if they already exist) whenever this action is triggered.

![{{ site.data.screenshots.zapier.customer-properties['title'] }}]({{ site.data.screenshots.zapier.customer-properties['image'] }})

### Unsubscribe a customer

This simple action allows you to unsubscribe a customer in Vero. Simply provide their ID and the customer will be unsubscribed as soon as this action is triggered.

### Track an event

This is possibly the most powerful action available with the Vero Zapier integration. This action allows you to track an event in Vero. This signifies that a customer has done something. An example might be to trigger the event 
Help ticket received when a customer emails your help desk in Help Scout. To do this, you'd name the event you want to capture as so:

![{{ site.data.screenshots.zapier.event-name['title'] }}]({{ site.data.screenshots.zapier.event-name['image'] }})

You can also capture event properties when you track an event. Event properties can be inserted into emails or used for further segmentation. To do this, you can add the properties you want to track with the event using the Zapier form. Here's an example:

![{{ site.data.screenshots.zapier.event-properties['title'] }}]({{ site.data.screenshots.zapier.event-properties['image'] }})

### Add or remove tags from a customer

This action allows you to add or remove tags from an individual customer profile in Vero. Each customer in Vero can have multiple tags. Tags are often used to give you the power to create manual segments or to record a customer's preferences.

To add or remove tags, simply use the Zapier form to record the tags you want. You can add and remove as many tags as you wish.

**Note**: If a customer does not have a tag and you remove it, nothing will happen. This is totally fine!

![{{ site.data.screenshots.zapier.tags['title'] }}]({{ site.data.screenshots.zapier.tags['image'] }})

## Triggers

Vero currently provides two triggers that you can use to drive actions in other Zapier plugins. If you wish the Vero Zapier plugin had extra triggers, drop us a line at [support@getvero.com](mailto:support@getvero.com).

### Unsubscribe

This is triggered whenever an individual customer is unsubscribed in Vero. We provide access to the email of the unsubscribed customer as part of this trigger.

### Customer updated

Whenever a customer profile in Vero is updated (via CSV, via our API, via the update and tags calls, etc.) this trigger is called. You have access to the full customer and every customer property you have captured in Vero to date.