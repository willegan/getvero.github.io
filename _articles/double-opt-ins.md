---
layout: articles
title:  "Double Opt-ins"
categories: "email design"
---
  
##Setting up double opt-ins

As part of Vero's mission to reduce spam and help ensure high quality emails, we require that all your subscribers sign up, or opt in, to receive your emails. 
    
As an additional step Vero has a double opt-in system that works in tandem with our automated emails and is a practice that will ensure the quality of your email list is kept high.

The double opt-in feature allows the customer to confirm their subscription and can be setup under `Settings > Opt In`

##Step 1. Setup your double opt-in email
The first step is to setup an your double opt-in email. This will be sent to your customer after they have subscribed or signed up.
Here is an example of of a subsription confirmation:
![{{ site.data.screenshots.vero.double-opt-in-email['title'] }}]({{ site.data.screenshots.vero.double-opt-in-email['image'] }})

You can then set the frequency of the double opt-in email:
![{{ site.data.screenshots.vero.double-opt-in-frequency['title'] }}]({{ site.data.screenshots.vero.double-opt-in-frequency['image'] }})

##Step 2. Add the opt-in condition
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
                
                
