
  
##Conditional Campaigns
    
##Overview
Vero offers the ability deliver specific emails to relevant user segments. For example, if you run an e-Commerce site, you may only want to send emails about women's shoes to your female or married male customers. This feature is supported by defining campaign conditions. A campaign condition is a rule that decides whether or not to send a campaign email by taking into account information about your user's. Campaign conditions are always evaluated immediately before an email is sent out.
It should be noted that the more information you provide to Vero about your user's (through user or event properties), the more granular your user segments can become.
##Types of conditions
The following is a list of available conditions, along with supported inputs:
***User hasn't received this email**
 - checks whether the user has previously received an email from this campaign in the time period provided. Input should be a integer indicating the time period in days. Providing a value of -1 will check that the user has ever received an email from this campaign. 
Example: "User hasn't received this email in the last 7 days" will send an email if the campaign has not emailed the recipient in the last 7 days.
	
***User has previously triggered an event**
 - compares the number of times a user has triggered an event to a value provided. Input should be an event, a method for comparing (e.g. equal to, greater than), and an integer indicating the number of times the event should be compared to. 
Example: "User has previously triggered 'Visited landing page' greater than 5 times" will send an email if the user has viewed your landing page more than 5 times.
	
***User has been tagged with/without**
 - checks when the user's account has been tagged with/without the value provided. Input should be a string containing the tag. 
Example: "User has been tagged with 'pro_user'" will send an email if the user has been tagged with 'pro_user'.
	
***User has user property**
 - compares a user property to the value provided. Input should be a property name, a method for comparing, and a string or integer indicating the value. 
Example: "User has a 'age' user property less than or equal to 60" will send an email to users younger than 61 years old.
	
***User doesn't trigger event**
 - checks whether a user has triggered the specified event between the time the email was triggered and when the email was due to be sent. Input should be the name of an event. 
Example: "User doesn't trigger 'cart_purchase'" will send an email if the user has not triggered 'cart_purchase' since the triggering 'add_product_to_cart' (this example 
assumes the event triggering this campaign was 'add_product_to_cart')!
	
***User has event property**
 - compares a property sent along with the event used to trigger this campaign, with the value provided. Input should be a property name, a method for comparing, and a string or integer indicating the value. 
Example: "User has a 'destination' event property equal to Sydney" will send an email to users who might be flying to Sydney
##Advanced feature - scoping
Certain conditions can be scoped by an event property for a greater degree of control. For example, lets say you want to email a user if they haven't received a response within a day for a question they asked on your site. If the user asks multiple questions at once and one question is answered (i.e. 'question_answered' event is trigger), Vero will consider all questions answered. To prevent this from happening, you will need to scope by the 
question_id.
Currently we have implemented scoping across:
*User has previously triggered an event
	
*User doesn't trigger event
To activate scoping, simple provide the name of an event property in the "Scope ALL filters by" text box.
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
