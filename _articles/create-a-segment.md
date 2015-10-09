---
layout: articles
title:  Create a segment
categories: segments
---

# Create a segment

Segments are a saved set of conditions that allow you drill down on a group of customers based on their properties, their actions and their past email interactions.

As a quick example, you might create a segment called *Paying customers*, including any users that have checked out recently on your website. Assuming you are tracking an event called `Completes checkout` using Vero's API, you might segment out *any customer that has triggered the event `Completes checkout` at least once in the last 30 days*.

Once you have created a segment, you are able to use your segment to send newsletters and as conditions in behavioral campaigns. You can combine segments to get even more targeted.

##Segmentation conditions

In Vero, there are four separate types of data stored about each of your customers. You can track and store customer `properties`, `tags` and `events`. Vero also automatically tracks customers' interactions with emails, `opens`, `clicks` and so on.

Using **and** and **or**, you can build up complex segments based on these data types. Below is a brief summary of each of the segmentation conditions you can use to filter your users.

### Segments

![{{site.data.screenshots.vero.segments.segments.title}}]({{site.data.screenshots.vero.segments.segments.image}})

You can nest segment conditions inside other segments. For example, you could create a segment that includes everyone who is in the segment *Trial customers*, yet not in the segment *Paying customers*. This would create a new segment, which you might title *Non-paying trial customers*. 

This condition encourages you to create more reusable segments, which is when segments become most useful.

### Events

![{{site.data.screenshots.vero.segments.events.title}}]({{site.data.screenshots.vero.segments.events.image}})

*Has triggered event* shown above is for any customer who has triggered the event regardless of values passed with the event back to Vero, as opposed to the following option.

*Has triggered event with property* is similar to *has triggered event*, but allows you to specify an event property and value (as attached to the trigger event) when segmenting.

### Email interactions

![{{site.data.screenshots.vero.segments.emails.title}}]({{site.data.screenshots.vero.segments.emails.image}})

You can segment customers based on their receiving, opening and clicking with any, or specific, email campaigns that you have sent. 

### Customer properties

![{{site.data.screenshots.vero.segments.properties.title}}]({{site.data.screenshots.vero.segments.properties.image}})
 
You can segment customers based on their individual customer properties. You can track as many customer properties as you want, via API or using CSV imports.

### Has tags

![{{site.data.screenshots.vero.segments.tags.title}}]({{site.data.screenshots.vero.segments.tags.image}})
 
You can use tags to define segments as well. You can segment users based on whether they do or do not have a specific tag.