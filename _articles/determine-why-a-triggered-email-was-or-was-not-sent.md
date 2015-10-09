---
layout: articles
title:  "Determine why a triggered email was or was not sent"
categories: campaigns
---

# Determine why a triggered email was or was not sent

## How behahvioral and transactional emails are triggered

In Vero, behavioral and transactional emails are triggered by an `event`. Events are customer actions, tracked using Vero's API. [Learn more about events]({{site.data.links.articles.event_tracking}}).

![site.data.screenshots.vero.campaign.triggered-email-example.title]({{site.data.screenshots.vero.campaign.triggered-email-example.image}})

As you can see in the above example, triggered emails can be sent immediately or with a delay. 

It is important to note that the conditions of a campaign are always evaluated **just before an email is sent**.

## Why a campaign was or was not setn

The *Logs* menu in Vero is a complete, real time history of ever customer that is identified, every action a customer triggers and ever campaign a customer receives.

As all transactional and behavioral emails are triggered by an `event`, Vero records whether a campaign was or was not sent as part of the logs for the trigger `event`. To view the emails triggered by an `event`, select *View event data* next to the trigger `event`.

![{{site.data.screenshots.vero.logs.events.view-event-data.title}}]({{site.data.screenshots.vero.logs.events.view-event-data.image}})

Every email that was triggered by the customer triggering a specific `event` is recorded in the trigger log and its status (`sent` or `discarded`). 

![{{site.data.screenshots.vero.logs.events.event-data-example.title}}]({{site.data.screenshots.vero.logs.events.event-data-example.image}})

If marked as `discarded`, Vero will also detail why that particular email was discarded.