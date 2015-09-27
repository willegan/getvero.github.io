---
layout: articles
title:  "Tracking email activity from Vero in KISSmetrics, Mixpanel, Amplitude and other analytics tools"
categories: "integrations"
---

#Tracking customer activity from Vero in KISSmetrics, Mixpanel, Amplitude and other analytics tools

There are three potential ways you can track the messaging activity in Vero in other analytics tools or databases.

##UTM tags

Most analytics tools, including Mixpanel and KISSmetrics, detect Google's UTM parameters. These are parameters that are appended to the links in your outgoing emails. When customer's click a link, analytics tools take these parameters and record the source of that session.

An example of a link with UTM parameters attached is `http://getvero.com?utm_source=vero&utm_medium=email`. In this scenario, analytics tools would track the `source` as `vero` and the `medium` as `email`.

You can automatically append UTM tags in Vero. [Learn how to integrate Google Analytics' UTM tags]({{site.data.links.articles.utm_tags}}).

##Integrate using a Segment.com write key

[Segment and Vero setup]({{site.data.links.segment_vero_setup}})

##Webhooks

Most analytics tools support UTM codes. 

At this time, this is the best way to integrate Vero with on-site analytics tools such as KISSmetrics or Mixpanel, and it should give you a complete picture of the success of your campaigns.

To learn how to enable and customise UTM tags on links in your campaigns, refer to the article 
[How to integrate Vero with Google Analytics for result tracking.](http://www.getvero.com/help/reporting/how-to-integrate-vero-with-google-analytics-for-result-tracking/)