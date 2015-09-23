*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*How Vero cookies contacts on your website using Javascript
    
#How Vero cookies contacts on your website using JavascriptThis only applies to customers using Vero's own Javascript API Library. Our backend libraries do not use cookies.

When using Vero’s Javascript API, you call the `identify` method whenever you get a contact’s permission to email them (logged in users, customers that opt in as they complete a checkout or customers that complete an explicit subscribe form).

Having gotten your customers’ permission to email them, they may not enter their email each time they return to your website.

To help solve this potential information gap, when you call `_veroq.push([‘user’, {email: ‘tyrion.lannister@casterlyrock.co’}]);`, Vero adds a new contact to your Vero database 
**and drops a cookie**
 that identifies this contact on your website.

This means that if the contact returns and does not enter their email, Vero is still able to track which pages they visit and actions they take.

The cookie has an infinite expiration date. If a contact was to browse your website on another device (an iPad when they had previously used their laptop) then Vero would lose sight of that contact until they enter their email again. At that time, Vero will be able to see the user on both devices.

###Advanced


If you want, you can append the following to any link in an outgoing email: `?vero_id={{user.id}}`.

Vero will replace this with a unique reference identifying the customer.

If the customer clicks through to your website (or any page on which you have Vero’s main Javascript Library installed) the customer will be immediately identified via Vero, without you having to explicitly call `_veroq.push([‘user’, {}]);`.

In this way you can track users as they move between devices, or as you direct them to new landing pages.