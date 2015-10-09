---
layout: articles
title:  "Reidentify (alias) customers in Vero"
categories: customer data
---

# Reidentify (alias) customers in Vero

Before reading this article, we recommend you read [Creating and Matching Vero customers IDs]({{site.data.links.creating_and_matching_user_ids}}) to get a full understanding of how Vero manages customer IDs.

Vero uses a unique `identifier` to record each customer in your Vero database. Vero's `reidentify`, or `alias`, endpoint allows you to update this unique identifier.

A unique `identifier` must be assigned to a User when they are added to Vero. This is typically a custom string or an an email address. 

An example, typical use case for the `reidentify` method is when a customer is added to Vero from your public website *before* they have been assigned a unique identifier in your database (typically after a customer signs up). In this scenario, most people assign the new customer a random `identifier` or use their email as the `identifier`. 

Once a customer signs up, you will typically want to `reidentify` that customer so that they are identified using their database-assigned ID. 

Our [API reference]({{site.data.links.vero_api}}) has the full details of the `reidentify` endpoint. A quick example, using our Javascript library, is below:

    _veroq.push(['reidentify', 'new_id', 'old_id']);

This will take the cookie that currently identifies a customer and reassign that cookie to use the `new_id` you've specified. It will also update the customer's record in your Vero database.

Once `reidentified` you can safely refer to the customer using their new, assigned, ID with the standard `identify` and `track` endpoints. 