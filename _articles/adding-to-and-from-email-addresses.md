---
layout: articles
title:  "Adding TO and FROM email addresses"
categories: configuration
---
  
##Adding "To" and "From" email addresses?
    
In Vero you can manage the email addresses that your emails are sent TO or FROM. You can add as many email addresses as you'd like by going to `Settings > Email Addresses`.

##Adding an email address
   When adding an email address there are three fields:
 
1. Email: The email address. 
e.g. chris@getvero.com
	
2. From name: The name you want the email to come from. 
e.g. Chris from Vero
	
3. Reply-to (optional): The email address you want the replies to go to. 
e.g. support@getvero.com

![{{ site.data.screenshots.vero.email-addresses['title'] }}]({{ site.data.screenshots.vero.email-addresses['image'] }})

##Complex / dynamic addresses:
You may want to email your customers based on other actions. To do this you could store a 'related_customer_email' property with an event or on a customer profile. 

This would use the Liquid templating language, for example `{% raw %}{{user.related_user_email}}{% endraw %}` or `{% raw %}{{event.related_user_email}}{% endraw %}`.
 
You can create an email address using this data. You might set the **Email** field to be {% raw%}{{user.related_user_email}}{% endraw %} and the 
**From name** to be `{% raw %}{{user.related_user_name}}{% endraw %}`. When the email goes out, Vero will pick up these values and use them.

##Using an email address
Once saved you can use an email address when creating a new campaign.

Here's an example of a dynamic email address as setup in your `Settings`:
![{{ site.data.screenshots.vero.dynamic-email-addresses['title'] }}]({{ site.data.screenshots.vero.dynamic-email-addresses['image'] }})

You can then select the email as a 'To' or 'From' address when creating an **automated** campaign:
![{{ site.data.screenshots.vero.email-addresses-campaign['title'] }}]({{ site.data.screenshots.vero.email-addresses-campaign['image'] }})

NOTE: Ensure you track the required data with the base event.

 

                
                
