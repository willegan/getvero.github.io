---
layout: articles
title:  "Understanding Scheduling and Timing"
categories: campaigns
---

# Understanding Scheduling and Timing

There are 3 options when setting up a campaign:

**1. Send Immediately: send an email as soon as this event is triggered**
This will queue a message to go out as soon as the trigger event is sent to Vero.

**2. Wait: wait for a period of time after this event is triggered**

This will wait X days (to clarify - this is one calendar day, not 24 hrs). If you have selected a prefered time AND your account is tracking the user's timezone, then you will be able to target at a local time. If the time has already passed, the message will deploy immedietly.

*Note: this is available by default with the Javascript library, but will need to be passed in if one of the backend libraries is used*

**3. Send relative to variable: send an email at a time relative to a custom event variable**

This is a more advanced option, typically for more complex use cases. To use this option, the tracked in time property will have to be a datetime object.
