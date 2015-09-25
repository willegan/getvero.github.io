
  
##How can I setup double opt-ins?
    
Vero has a double opt-in system that works in tandem with our automated emails.
Using our subscribe forms or Javascript library you can add customers to the Vero database. Once added you can then track their actions and use these actions to trigger an automated email.
In the guide to 
[creating a subscribe form](http://www.getvero.com/knowledge-base#/questions/50507-Creating-a-subscribe-form) we use the example of tracking when a customer 
Downloads an eBook. If you wanted to ensure a user double opts-in before receiving an emails from you, the process is as follows.
##Step 1. Setup an automated campaign
The first step is to setup an automated campaign triggered by the event you want to double opt-in. Here's a basic example we are going to use, thanking customers for downloading the eBook:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2631/Screen_Shot_2013-11-21_at_1.10.25_pm.png)
##Step 2. Add the opt in condition
Now you have your email setup, you want to ensure that customers are opted in before receiving this email. To do this, add the condition 'has opted in', like so:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2632/Screen_Shot_2013-11-21_at_1.10.46_pm.png)
This tells Vero that before sending this automated campaign it first needs to send an email confirming that the user has confirmed their subscription. This will happen automatically.
In summary:
- User triggers the action 
Downloads eBook
-Vero checks the conditions on your automated campaign and knows that it needs to email the customer an opt-in confirmation before sending the automated email.
- If the user opts-in, Vero automatically sends the automated campaign. If they don't, it does nothing.
##Step 3. Edit your opt-in email
You can easily edit your opt in via the 
[Account > Integrations](https://app.getvero.com/account/integrations) menu:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2633/Screen_Shot_2013-11-21_at_1.15.52_pm.png)
When editing your opt in campaign there is only 
**one**
 rule. You 
**must**
 include the dynamic variable "{{url.opt_in}}" so that Vero actually inserts the confirmation URL.
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
