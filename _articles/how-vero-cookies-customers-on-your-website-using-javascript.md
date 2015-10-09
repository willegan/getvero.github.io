---
layout: articles
title: How Vero cookies customers on your website using Javascript?
categories: data
---

# How Vero cookies customers on your website using Javascript?

This only applies to customers using Vero's own Javascript API Library. Our backend libraries do not use cookies.

When using Vero's Javascript API, you call the `identify`` method whenever you get a customer's permission to email them (logged in customers, customers that opt in as they complete a checkout or customers that complete an explicit subscribe form).

Having gotten your customers' permission to email them, they may not enter their email each time they return to your website.

To help solve this potential information gap, when you call the following code:

	_veroq.push(['user', {email: 'tyrion.lannister@casterlyrock.co'}]);

Vero adds a new customer to your Vero database and drops a cookie that identifies this customer on your website.

This means that if the customer returns and does not enter their email, Vero is still able to track which pages they visit and actions they take.

The cookie has an infinite expiration date. If a customer was to browse your website on another device (an iPad when they had previously used their laptop) then Vero would lose sight of that customer until they enter their email again. At that time, Vero will be able to see the customer on both devices.

## Advanced

Vero automatically append the following parameter to any link in an outgoing email. This enables the tracking of customers even if they don't provide their email address.

{% raw %}
	?vero_id={{user.id}}
{% endraw %}

If the customer clicks on a link to your website (or any page on which you have Vero's main Javascript Library installed), the customer will be immediately identified via Vero, without you having to explicitly call the `identify` method.

In this way you can track customers as they move between devices, or as you direct them to new landing pages.