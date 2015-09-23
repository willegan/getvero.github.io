*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*How to ‘re-identify’ users to merge duplicate profiles
    
#How to ‘re-identify’ users to merge duplicate profilesRe-identify is a great feature used to merge profiles when a Users email ends up in your system with more than 1 Unique ID.

A Unique ID is always assigned to a User when they are entered into Vero. This can be anything from a custom Integer to an Email Address and is the way we identify each individual User.

There are many scenario’s in which a Users email may end up in the system more than once. Here are two typical scenarios where a User has multiple profiles that needs to merged into one profile with a single Unique ID.

***A User is added to Vero before they have been assigned a customer number in your system:**

The User is assigned their email address as the unique ID when they subscribe via a form and you would like to update this to the customer number you assign users in your system. (vice versa).

If the subscribe form is on a website landing page somewhere on your own domain Vero will already have a cookie set up for them.

At this point you want to call 
Re-identify:

_veroq.push(['reidentify', 'NEW_ID', 'OLD_ID']);

This will take the cookie they have and re-assign it to the database ID. It should be fine to run this on any page where the user is logged in, as it won’t cause any weird aliasing if the ID is the same :).

This will replace OLD_ID with their email and NEW_ID with their database ID.

***You’ve manually imported a list of Users via a CSV without their Unique ID and their email address has been assigned to the Unique ID leaving you with duplicate profiles:**

The trick here is to append 
?vero_id={{vero.id}} to the first email the customer receives. For example this could be a Welcome Email.

This tells Vero to cookie the User when the website DOESN’T know who they are.

If you have Vero’s Javascript appended then we’ll know immediately who they are when they click-through.

Alternatively when the User signs up or signs in you can call 
Re-identify every time before calling the standard Identify on your backend to remove any duplication.

—-

If you have a number of duplicates in your system that you would like to bulk merge please contact support@getvero.com and we can do those or you :).