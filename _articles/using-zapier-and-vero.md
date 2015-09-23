*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*Using Zapier and Vero
    
#Using Zapier and VeroVero’s Zapier 
Zap makes it easy to add customers, their actions and their properties to Vero.

One of the things that distinguishes Vero as a platform for communicating effectively with your customers is that it is a central data store of all of your customer interactions. By tracking who your customers and subscribers are and what they do, Vero enables you to trigger automated campaigns, send more segmented one-off emails and get a better understanding of your customer base.

This guide will explain how you can use the Vero Zap.

##Actions


In Zapier, an 
Action is trigger by an event. For example, if you created the following Zap:

![Pipedrive to Vero](https://www.getvero.com/wp-content/uploads/2015/06/pipedrive-and-vero.png)

…the 
Action is the right hand side – it is the adding of a customer profile in Vero.

The Vero Zapier plugin has the following actions available.

###The basics


Every action of the Vero Zapier plugin requires that you provide at least a unique user ID. Some also allow you to provide an email.

**Note:**
 the user’s ID must be unique and many Vero customers simply use the user’s email for the ID field. These are used to identify and update the user’s profile in Vero. The screenshot below shows how these fields map to a profile inside your Vero account:

![add-a-user](https://www.getvero.com/wp-content/uploads/2015/06/add-a-user1.png)![user-properties-vero](https://www.getvero.com/wp-content/uploads/2015/06/user-properties-vero.png)

###Create a user


This action adds or updates a user’s profile in Vero. After providing a user’s ID and email as above, you can provide any custom user properties that you want to using the fields provided by Zapier. User properties are either created or updated (if they already exist) whenever this action is triggered.

![user-properties](https://www.getvero.com/wp-content/uploads/2015/06/user-properties.png)

###Unsubscribe a user


This simple action allows you to unsubscribe a user in Vero. Simply provide their ID and the user will be unsubscribed as soon as this action is triggered.

###Track an event


Possibly the most powerful action available with the Vero Zapier extension, this action allows you to track an event in Vero. This signifies that a user has done something. An example might be to trigger the event 
Help ticket received when a user emails your help desk in Help Scout. To do this, you’d name the event you want to capture as so:

![event-name](https://www.getvero.com/wp-content/uploads/2015/06/event-name.png)

You can also capture 
**event properties**
 when you track an event. Event data can be inserted into emails or used for further segmentation. To do this, you can add the properties you want to track with the event using the Zapier form. Here’s an example:

![event-properties](https://www.getvero.com/wp-content/uploads/2015/06/event-properties.png)

###Add or remove tags from a user


This action allows you to add or remove tags from an individual user profile in Vero. Each user in Vero can have multiple tags. Tags are not commonly used but can give you the power to create manual segments or to recordÂ a customer’s preferences.

To add or remove tags, simply use the Zapier form to record the tags you want. You can add and remove as many tags as you wish.

**Note:**
 if a user does not have a tag and you remove it, nothing will happen. This is totally fine!

![tags](https://www.getvero.com/wp-content/uploads/2015/06/tags.png)

##Triggers


Vero currently provides two triggers that you can use to drive actions in other Zapier plugins. If you wish the Vero Zapier plugin had extra triggers, drop us a line at 
[support@getvero.com](mailto:support@getvero.com).

###Unsubscribe


This is triggered whenever an individual user is unsubscribed in Vero. We provide access to the email of the unsubscribed user as part of this trigger.

###User updated


Whenever a user profile in Vero is updated (via CSV, via our API, via the update and tags calls, etc.) this trigger is called. You have access to the full user and every user property you have captured in Vero to date.