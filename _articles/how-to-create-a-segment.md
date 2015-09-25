---
layout: articles
title:  How to create a segment?
categories: "segments"
---

# How to create a segment?

To create a segment called **Paying customers** you will include any customer that has triggered the event **Charges Card at least once in the last 30 days**.

This segment would then automatically include anyone that has previously taken the *card_charged_successfully* event (which you track via your website). Vero will automatically add customers to this segment in realtime as they trigger their *card_charged_successfully* event.

![{{ site.data.screenshots.vero.segments.paying-customers['title'] }}]({{ site.data.screenshots.vero.segments.paying-customers['image'] }})

**Awesome. We've got a segment. Now what?**

Now that you have a segment created, you are able to use it for targeting as you build out your new campaign. You can combine various segments and exclude various other segments from within the campaign builder section.

![{{ site.data.screenshots.vero.campaign.use-segment['title'] }}]({{ site.data.screenshots.vero.campaign.use-segment['image'] }})

**What are rules related to building a segment?**

The rules that build a segment are based on each individual's customer profile, given a number of different types of data that you've sent to Vero as shown here:
![{{ site.data.screenshots.vero.user-profile['title'] }}]({{ site.data.screenshots.vero.user-profile['image'] }})

Available conditions you can leverage, either individually or in combination via **and**/**or** options in building out your customized segment include:

![{{ site.data.screenshots.vero.conditions.options['title'] }}]({{ site.data.screenshots.vero.conditions.options['image'] }})

## Segments

Segments allow additional segments to be included or excluded from each other.

## Events

### Has triggered event

![{{ site.data.screenshots.vero.conditions.triggered_event['title'] }}]({{ site.data.screenshots.vero.conditions.triggered_event['image'] }})

Has triggered event shown above is for any customer who has triggered the event regardless of values passed with the event back to Vero, as opposed to the following option.

### Has triggered event with property (beta)

![{{ site.data.screenshots.vero.conditions.has_triggered_event_with_property['title'] }}]({{ site.data.screenshots.vero.conditions.has_triggered_event_with_property['image'] }})

Similar to having triggered an event, but also allowing additional customization via specific values associated with the event and property selected.

## Emails

You are able to set your segment given various has/has not rules for if they have previously received/opened/clicked X message previously. A common inquiry we hear about is for follow-up campaigns targeted at people who have previously received and interacted/did not interact with those messages in a particular way.

## Customer properties

The following options relate to a customer's profile who will be targeted, and can be used in combination with any event.

### Has property

![{{ site.data.screenshots.vero.conditions.has_property['title'] }}]({{ site.data.screenshots.vero.conditions.has_property['image'] }})

So long as the customer's profile has “tech” listed in the value for the property of "business", then this customer would qualify for this segment.

### Has tags

![{{ site.data.screenshots.vero.conditions.has_tag['title'] }}]({{ site.data.screenshots.vero.conditions.has_tag['image'] }})

Tags are an additional dynamic layer that is available for use.