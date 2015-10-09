---
layout: articles
title:  "Identifying Customers"
categories: customer data
---
	
#Identifying Customers

Vero makes it easy to track your customers' lifecycle events. This could be signing up, viewing a product, adding a product to the shopping cart, using feature X, signing up for a paid subscription and so on.

		
## Why we need to identify customers

Before you can track any events you need to identify your customers. When using our javascript library we make it easy: you simply identify the customer when they first sign up or login and we will store a cookie in order to track their actions from that point onward. For the sake of this help article we'll assume you're using our Javascript library. If you'd like more details on our API and more complex setup, refer to our [full API](https://github.com/getvero/vero-api)

## When to identify customers

You should identify a customer when they first subscribe to a newsletter or register for your service. To track a customer using the javascript library, you do the following:

	_veroq.push(['user', {
		id: 'support@getvero.com',
		email: 'support@getvero.com'
	}]);

What this does is tell Vero to store a cookie for this customer with a unique identifier. It also prepares the library to track any future events against this particular email address. Customers are identified via their email address but you can also record specific attributes alongside this. These will show up in the customer's profile and common examples include the age, location and gender. Here's how you might record their age and location:

	_veroq.push(['user', {
		id: 'support@getvero.com',
		email: 'support@getvero.com',
		age: 24,
		location: 'San Francisco'
	}]);

**Note**: You can override the current stored customer by simply re-identifying a customer. This will overwrite the cookie instantly.

## Capturing an email address

We find that, generally, our customers are already handling their own newsletter subscription forms and logins. At this time the best way to technically capture the email address is to call the javascript code in the section above on a *thank you* page after a customer submits a newsletter subscription form or on a *welcome* page after a customer signs up.

**Note**: It's best practice to re-identify a customer whenever they login. This ensures their cookie is up to date and that events are recorded against the correct customer, particularly if they share their computer with others.

## Platform-specific examples

### Magento

When using Magento there are three places we'd recommend you identify a customer in order to maximise your ability to track their lifecycle events:


After a customer submits your newsletter form, add the following javascript alongside the *thank you* notice on the homepage:

	_veroq.push(['user', {
		id: 'customer@domain.com',
		email: 'customer@domain.com'
	}]);

When a customer signs up or logs into their account, add the above javascript on the *Dashboard* page.

When a customer first enters their email as part of the checkout process. In most instances, stores collect their customers' details, including an email address, at step one of the checkout process. In this instance you should identify the customer by implementing the code above on the HTML page for 
step two. This way you can capture each step of a customer's progression through the checkout process.

### Facebook Connect

If you use Facebook Connect to allow customers to sign up, you can easily identify the customer when the Facebook OAuth returns them to your site. Depending on your implementation, Facebook will generally redirect the customer back to your website in the following format: `YOUR_REDIRECT_URI#`

In this instance you can use the Facebook `USER_ACCESS_TOKEN` to get more information about the customer. In order to get their email (which you need for email marketing!) you must request access to the 'email' scope. See the 
[Facebook Documentation](https://developers.facebook.com/docs/guides/web/) for further information. Once you have the customer's email, simply call the following code to identify them:

	_veroq.push(['user', {
		id: 'customer@domain.com',
		email: 'customer@domain.com'
	}]);