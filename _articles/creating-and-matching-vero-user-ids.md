*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*Creating and matching Vero user IDs
    
#Creating and matching Vero user IDsIn Vero, customer records must have a unique `id`. We also regularly refer to this as the user’s `identifier`. The terms are interchangeable. 
**An `id` is unique in Vero. No two users can have the same `id`.**
 
Currently, if new id’s are pushed with the same email address, Vero will create a new user record.

In the Vero UI, you will see a user’s `id` at the top of their profile:

![Event tracking user's ID](https://www.getvero.com/wp-content/uploads/2015/07/users-identifier-event-tracking.png)

The `id` can be 
**any unique string**
. Typically it is a database ID, though may also simply be a customer’s downcased email address – as these are unique.

Notes on the `id`:

*The `id` is used to lookup, find and take action on users for all API calls.


*The `id` is used in Vero’s 
[webhooks](http://www.getvero.com/help/reporting/setting-up-veros-webhooks/) so that you can identify which user is interacting with your emails.

You can add and manage user profiles in Vero without an `email`, as long as they have an identifier.

##Cookies and ways of adding users to Vero


There are three key ways you can add users to Vero:

*Via our API. Unless you use the Javascript library, you must pass the user’s `id` with each request, as there is no automated cookie management. Our backend libraries, such as Ruby and Python also follow this approach. For our Javascript library – This library sits on top of our API and 
**manages cookies for you**
. As such you do not need to pass the `id` with every single request: you can `identify` the user and Vero will automatically assign the cookie’d `id` to future `track` calls.


*Via CSV. Uploading a CSV allows you to import user data.


*Via Vero’s subscribe forms. These let you collect a user’s email address and other properties and add them to Vero. Subscribe forms 
**do not**
 collect a user’s `id`, just their email address. See the section below regarding the `id` and `email` fields for more details.

##IDs and emails


A unique user `id` must be provided, 
**except**
 when using our Javascript library, our Form Builder or CSV imports. As such there are special considerations in these cases to ensure you are tracking correctly.

Despite being able to add and manage users in Vero without an `email`, and just an `identifier`, you 
**must**
 add an email in order to actually email a user.

Without an `email`, Vero will simply not queue up any emails for this user (they are marked as disabled).

###Vero’s Javascript library


When you make an `identify` call using Vero’s Javascript library, a cookie is dropped, identifying the user by their `id`. Here is an example of such a call:

_veroq.push(['user', {id: '1234', email: 'james@getvero.com'}]);

After making such a call, you are able to make `track` calls, and we will automatically assign those to the user with the matching cookie. For example, the following would track an event for user with `id` ‘1234’, after call the above identify method:

_veroq.push(['track', 'viewed product']);

There are a few functions you can make specific use of with our Javascript library.

Firstly, if you call `identify` 
**without**
 an `id`, and just an `email`, we will use the email as the `id`. For example, the following call would add the user to Vero with an `id` equal to ‘james@getvero.com’ and store a cookie matching this profile:

_veroq.push(['user', {email: 'james@getvero.com'}]);

###Vero’s HTML forms


Vero’s forms following the same principle.

By default the Vero form generator does not include an ID field. This is because, typically, our forms are used on blogs and ask users for their email directly. It would not be sensible, in most scenarios, to ask a user for their `id`, as this is usually track from inside your web application or mobile applications.

As such, by default, our web forms pass Vero the `email` field only. Vero will use this as both the `email` and the `id`.

###CSV imports


CSV imports do not require you to provide an `id` column. It is recommended that you do provide an `id` field but, in some scenarios, you cannot.

If you provide an `id` column, we will match using this column. If you do not provide an `id` column, you can simply provide an `email` column and we will use this to match user records.

##Preventing conflicts of ID and email fields


**All three of the above scenarios are important.**
 We have released a Labs feature, 
[that you can access here](https://app.getvero.com/account/labs), titled ‘Match customer via ID then email’. This supports the HTML forms and ‘email-only’ Javascript calls.

To illustrate, when enabled, the following identify call will:

1. First look for a user with an `id` equal to ‘james@getvero.com’.


2. 
**Unique to this Labs feature:**
 if the above does not find a user Vero will search for a user with the `email` ‘james@getvero.com’.


3. Finally, if neither record is found it will create a new user with the `id` and `email` both equal to ‘james@getvero.com’. This is the standard functionality for calling Vero without an `id`.

##Recommendations


To get setup correctly from the outset, we make the following two recommendations:

*We always recommend providing an `id` field when using our Javascript library.


*If you are going to be tracking users in scenarios where you 
**do not know their `id`**
 then you should turn on the Vero Labs feature to match on emails as a secondary field.


*When tracking users on pages you do not know their `id`, do not provide the `id` in the `identify` call. Simply provide the email.

If you have further questions, please contact us via 
[support@getvero.com](mailto:support@getvero.com).