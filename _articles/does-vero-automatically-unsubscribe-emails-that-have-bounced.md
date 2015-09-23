*[Help](/help)

        ❯
        
*[Deliverability](/help/deliverability)

        ❯
        
*Does Vero automatically unsubscribe emails that have ‘bounced’?
    
#Does Vero automatically unsubscribe emails that have ‘bounced’?Vero 
**does**
automatically unsubscribe emails that return with a 
**hard bounce**
.

A 
**hard bounce**
 is an email message that is rejected by the recipient ISP/ESP because the recipient’s email address is invalid. A hard bounce might occur because the domain name doesn’t exist or because the recipient is unknown.

Vero 
**does not**
 automatically unsubscribe emails that return a 
**soft bounce**
.

This is because a soft bounce is a a 
**temporary**
 delivery failure. The email has gotten as far as the recipient’s mail server but is returned as undelivered at least once before it is, ultimately, accepted and delivered to the recipients inbox.

A 
**soft bounce**
 can occur for a number of reasons:

*The recipient’s mailbox is full


*The receiving server is down or swamped with messages


*The message size is too large


*The recipient’s settings do not allow for email from the sender


*Suspicious or spammy content has been detected

When an email address returns a 
**soft bounce**
 for five consecutive campaigns we 
**do**
 automatically convert this to a 
**hard bounce**
 and unsubscribe the contact.