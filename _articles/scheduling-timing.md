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

This will wait X amount of time (to clarify - when selecting "wait 1 day(s)" this is one calendar day, not 24 hrs). If you have selected a prefered time AND your account is tracking the user's timezone, then you will be able to target at a local time. **Automatic** is dependent on when the message is scheduled. 

To use this feature, you'll most likely be dealing with multiple timezones around the world, which means certain timezone could already pass by the time you schedule. If the time *has not* passed locally, the user will receive the message at the expected time. If the time *has* already passed local to the receipient, the message will deploy with a delay based on when they were supposed to receive the message.

For Example:

Shirley sets up a campaign to trigger 30mins after sign up with preferred delivery at 9am. James triggers sign up at 8am in his own timezone. Because 9am in his own timezone hasn't passed for the day, he will get it at 9am. If however he triggered at 10am in his local timezone, it will schedule for 10.30am in his local timezone.

*Note: Automatically collecting the timezone is available by default with the Javascript library, but will need to be passed in if one of the backend libraries is used*

**3. Send relative to variable: send an email at a time relative to a custom event variable**

This is a more advanced option, typically for more complex use cases. To use this option, the tracked in time property will have to be a datetime object.
