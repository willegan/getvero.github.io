*[Help](/help)

        ❯
        
*[Getting Started](/help/getting-started)

        ❯
        
*What is a segment?
    
#What is a segment?Segments are one of the key features that give Vero its power.

Unlike many of the more traditional email marketing tools, Vero uses segments in the place of lists. Lists are
static groups of contacts. Segments are 
dynamic groups created by filtering your Vero database based on your contacts’ properties, tracked events, past email interactions and tags. Dynamic lists allow you to set up the segment, and can reduce the amount of work for getting your campaigns out the door on a day-to-day basis.

****


An example of segmentation in practice is below.

To create a segment called 
**Paying customers**
 you will include any user that has 
**triggered the event 
Charges Card at least once in the last 30 days.**

This segment would then automatically include anyone that has previously taken the 
card_charged_successfullyevent (which you track via your website). Vero will automatically add contacts to this segment in realtime as they trigger their 
card_charged_successfully event.

[![example_segment](https://www.getvero.com/wp-content/uploads/2015/02/example_segment-1024x320.png)](http://www.getvero.com/wp-content/uploads/2015/02/example_segment.png)

****


**Awesome. We’ve got a segment. Now what?**

Now that you have a segment created, you are able to use it for targeting as you build out your new campaign. You can combine various segments and exclude various other segments from within the campaign builder section.

[![Campaign_Segment](https://www.getvero.com/wp-content/uploads/2015/02/Campaign_Segment-1024x226.png)](http://www.getvero.com/wp-content/uploads/2015/02/Campaign_Segment.png)

****


**What are rules related to building a segment?**

The rules that build a segment are based on each individual’s user profile, given a number of different types of data that you’ve sent to Vero as shown here:
[![user_profile](https://www.getvero.com/wp-content/uploads/2015/02/user_profile-1024x295.png)](http://www.getvero.com/wp-content/uploads/2015/02/user_profile.png)

Available conditions you can leverage, either individually or in combination via 
**and**
/
**or**
 options in building out your customized segment include:

![conditional_options](https://www.getvero.com/wp-content/uploads/2015/02/conditional_options2.png)

**Segments**

Segments allow additional segments to be included or excluded from each other.

**Events**

Has triggered event

[![triggered_event](https://www.getvero.com/wp-content/uploads/2015/02/triggered_event-1024x133.png)](http://www.getvero.com/wp-content/uploads/2015/02/triggered_event.png)

Has triggered event shown above is for any user who has triggered the event regardless of values passed with the event back to Vero, as opposed to the following option.

Has triggered event with property (beta)

[![has_triggered_event_with_property](https://www.getvero.com/wp-content/uploads/2015/02/has_triggered_event_with_property-1024x120.png)](http://www.getvero.com/wp-content/uploads/2015/02/has_triggered_event_with_property.png)

Similar to having triggered an event, but also allowing additional customization via specific values associated with the event and property selected.

**Emails**

You are able to set your segment given various has/has not rules for if they have previously received/opened/clicked X message previously. A common inquiry we hear about is for follow-up campaigns targeted at people who have previously received and interacted/did not interact with those messages in a particular way.

**Contact Properties**

Also known as User Properties, the following options relate to a user’s profile who will be targeted, and can be used in combination with any event.

Has property

[![contact_has_property](https://www.getvero.com/wp-content/uploads/2015/02/contact_has_property-1024x119.png)](http://www.getvero.com/wp-content/uploads/2015/02/contact_has_property.png)

So long as the user’s profile has “tech” listed in the value for the property of “business”, then this user would qualify for this segment.

Has tags

[![contact_has_tag](https://www.getvero.com/wp-content/uploads/2015/02/contact_has_tag-1024x123.png)](http://www.getvero.com/wp-content/uploads/2015/02/contact_has_tag.png)

Tags are an additional dynamic layer that is available for use. More info can be found 
[here](http://www.getvero.com/help/getting-started/what-are-tags/).