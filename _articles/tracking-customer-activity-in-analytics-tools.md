---
layout: articles
title:  "Tracking email activity from Vero in KISSmetrics, Mixpanel, Amplitude and other analytics tools"
categories: integrations
---

# Tracking customer activity from Vero in KISSmetrics, Mixpanel, Amplitude and other analytics tools

There are three potential ways you can track the messaging activity in Vero in other analytics tools or databases.

## UTM tags

Most analytics tools, including Mixpanel and KISSmetrics, detect Google's UTM parameters. These are parameters that are appended to the links in your outgoing emails. When customer's click a link, analytics tools take these parameters and record the source of that session.

An example of a link with UTM parameters attached is `http://getvero.com?utm_source=vero&utm_medium=email`. In this scenario, analytics tools would track the `source` as `vero` and the `medium` as `email`.

You can automatically append UTM tags in Vero. [Learn how to integrate Google Analytics' UTM tags]({{site.data.links.articles.utm_tags}}).

## Integrate using a Segment.com write key

Vero integrates cleanly with [Segment]({{site.links.segment}}). You can send data **to** Vero once you integrate on of Segment's tracking libraries. You can also **send email data** activity from Vero **back into Segment** using their email events integration.

The [Segment and Vero integration guide]({{site.data.links.segment_vero_setup}}) details how to send email events from Vero to Segment. This then gives you the ability to pipe this data from Segment into other analytics and business intelligence tools such as Looker, KISSmetrics, Amplitude, and so on.

We send the same email events we support with our webhooks to Segment.

## Webhooks

![{{site.data.screenshots.vero.integrations.webhooks.overview.title}}]({{site.data.screenshots.vero.integrations.webhooks.overview.image}}) 

Vero can send all email events, including `sent`, `delivered`, `opened`, `clicked`, `bounced`, `unsubscribed` to a webhook you provide.

This enables you to capture and save the data in your own data base or data warehouse. This is the most powerful way to collect data from Vero, enabling you to slice the data in any way that you please. Many customers use this data in combination with traditioanl databases such as PostgreSQL or more modern databases, such as Amazon AWS's Redshift.

![{{site.data.screenshots.vero.integrations.webhooks.detail.title}}]({{site.data.screenshots.vero.integrations.webhooks.detail.image}}) 

When configuring webhooks, selecting *Test URL* will send an example of each webhook to the URL you have specified.