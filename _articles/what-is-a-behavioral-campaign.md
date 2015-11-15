---
layout: articles
title:  "What is a behavioral campaign ?"
categories: campaigns
---

# What is a behavioral campaign?

Behavioral email campaigns are marketing emails that are automatically sent to customers when they take certain actions on your site or in your mobile application. You can send an email immediately or set a wait period, such as a few days.

In Vero, behavioral emails are used to send highly personalized emails based on current and past customer behaviour.

Here are a few examples:

- Send new customers a series of welcome emails.
- Send a coupon code when a customer views a product page three times in one week but doesn’t make a purchase.
- Remind your customers about app features they haven’t tried yet.
- Behavioural emails can also be used to power drip campaigns and autoresponders (i.e a series of automated emails) as an action on your website can trigger both a single email or a series.

Vero’s behavioural emails replace exporting customer data, creating new segments in Excel and uploading new lists. They’re the fastest, easiest way to send highly personalized, timely emails.


**Setting Up a behavioural message**

There are 4 main sections to a behavioural campaign.


1. What event do you want to associate/trigger with this campaign?
![{{ site.data.screenshots.vero.behavioral.trigger_event['title'] }}]({{ site.data.screenshots.vero.behavioral.trigger_event['image'] }}) 
[More on Events](/articles/what-are-events.html)

2. When do you want this campaign to deploy?
![{{ site.data.screenshots.vero.behavioral.set_timing['title'] }}]({{ site.data.screenshots.vero.behavioral.set_timing['image'] }}) 

3. Who do you want to qualify for this message?
![{{ site.data.screenshots.vero.behavioral.campaign_conditions['title'] }}]({{ site.data.screenshots.vero.behavioral.campaign_conditions['image'] }}) 
[More on Targeting/Segments/Conditions](/articles/create-a-segment.html)

4. What message do you want to send?

You can configure the email addresses (both from and to), use merge tags, generate a plain text version, or edit with the HTML with either the rich text editor or use a base template from this section.

*HTML with the rich text editor:*
![{{ site.data.screenshots.vero.behavioral.content_editor_rich['title'] }}]({{ site.data.screenshots.vero.behavioral.content_editor_rich['image'] }}) 

**or**

*HTML using a template:*
![{{ site.data.screenshots.vero.behavioral.content_editor_use_template['title'] }}]({{ site.data.screenshots.vero.behavioral.content_editor_use_template['image'] }}) 


Additional steps can be added to a series by selecting the campaign once the initial message is created and then selecting the **Add Email to Series** button on the specific campaign page.


**Here is an example overview of a 3-Step Welcome Series:**

![{{ site.data.screenshots.vero.campaign.series['title'] }}]({{ site.data.screenshots.vero.campaign.series['image'] }})

1. *"Welcome to Vero"* -
This message is the first message of this series.  It is set to deploy immediately.  

2. *"Need a Hand installing our trac..."* -
This message will deploy 1 day after the last message (step 1 - *"Welcome to Vero"*) to the segment that is selected in step 1 if they also qualify for the conditions listed within this step.

3. *"How You can Use Lifecycle Email..."* -
This message will deploy 2 days after the last message (step 2 - *"Need a Hand installing our trac..."*) to the segment that qualifies for the previous step, and also meets any additional conditions listed within this segment.
