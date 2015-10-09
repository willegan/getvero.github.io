---
layout: articles
title:  Creating and matching Vero customer IDs
categories: customer data
---

# Creating and matching Vero customer IDs

In Vero, customer records must have a unique ID. We also regularly refer to this as the customer's `identifier`. The terms are interchangeable. Currently, if new ID's are pushed with the same email address, Vero will create a new customer record.

In the Vero UI, you will see a customer's ID at the top of their profile:

![{{ site.data.screenshots.vero.customer-properties-id['title'] }}]({{ site.data.screenshots.vero.customer-properties-id['image'] }})

The ID can be any unique string or number. Typically it is a database ID, though may also simply be a customer's downcased email address – as these are unique.

- The ID is used to lookup, find and take action on customers for all API calls.
- The ID is used in Vero's webhooks so that you can identify which customer is interacting with your emails.
- You can add and manage customer profiles in Vero without an email, as long as they have an identifier.

## Cookies and ways of adding customers to Vero

There are three key ways you can add customers to Vero:

### Via our API

Using our backend libraries, you must pass the customers ID with each request, as there is no automated cookie management. 

For our Javascript library, this sits on top of our API and manages cookies for you. As such you do not need to pass the ID with every single request. You can simply `identify` the customer and Vero will automatically assign the cookie'd ID to future `track` calls.

### Via CSV

Uploading a CSV allows you to import customer data via our importer.

### Via Vero's subscribe forms

These let you collect a customer's email address and other properties and add them to Vero. Subscribe forms do not collect a customers ID, just their email address. See the section below regarding the ID and email fields for more details.

## IDs and emails

A unique customer ID must be provided, except when using our Javascript library, our Form Builder or CSV imports. As such there are special considerations in these cases to ensure you are tracking correctly.

Despite being able to add and manage customers in Vero without an email, and just an `identifier`, you must add an email address in order to actually email a customer.

Without an email, Vero will simply not queue up any emails for this customer (they are marked as disabled).

### Vero's Javascript library

When you make an `identify` call using Vero's Javascript library, a cookie is dropped, identifying the customer by their ID. Here is an example of such a call:

	_veroq.push(['user', {
		id: '1234',
		email: 'support@getvero.com'
	}]);

After making such a call, you are able to make `track` calls, and we will automatically assign those to the customer with the matching cookie. For example, the following would track an event for a customer with ID '1234', after you call the above identify method:

	_veroq.push(['track', 'viewed product']);

There are a few functions you can make specific use of with our Javascript library.

Firstly, if you call `identify` without an ID, and just an email, we will use the email as the ID. For example, the following call would add the customer to Vero with an ID equal to 'support@getvero.com' and store a cookie matching this profile:

	_veroq.push(['user', {email: 'support@getvero.com'}]);

### Vero's HTML forms

Vero's forms follow the same principle.

By default the Vero form generator does not include an ID field. This is because, typically, our forms are used on blogs and ask the customer for their email directly. It would not be sensible, in most scenarios, to ask a customer for their ID, as this is usually tracked from inside your web application or mobile applications.

As such, by default, our web forms pass Vero the email field only. Vero will use this as both the email and the ID.

### CSV imports

CSV imports do not require you to provide an ID column. It is recommended that you do provide an ID field but, in some scenarios, you cannot.

If you provide an ID column, we will match using this column. If you do not provide an ID column, you can simply provide an email column and we will use this to match customer records.

## Preventing conflicts of ID and email fields

All three of the above scenarios are important. We have released a Labs feature, that you can access under *Settings > Labs > Match customer via ID then email*. This supports the HTML forms and 'email-only' Javascript calls.

To illustrate, when enabled, the following identify call will:

1. First look for a customer with an ID equal to 'support@getvero.com'.
2. Unique to this Labs feature: if the above does not find a customer Vero will search for a customer with the email 'support@getvero.com'.
3. Finally, if neither record is found it will create a new customer with the ID and email both equal to 'support@getvero.com'. This is the standard functionality for calling Vero without an ID.

## Recommendations

To get setup correctly from the outset, we make the following two recommendations:

- We always recommend providing an ID field when using our Javascript library.
If you are going to be tracking customers in scenarios where you do not know their ID then you should turn on the Vero Labs feature to match on emails as a secondary field.
- When tracking customers on pages you do not know their ID, do not provide the ID in the `identify` call. Simply provide the email.

If you have further questions, please contact us via 
[support@getvero.com](mailto:support@getvero.com).