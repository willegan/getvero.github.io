---
layout: articles
title:  "Reidentify (alias) users in Vero"
categories: data
---

# Reidentify (alias) users in Vero

Before reading this article, we recommend you read [Creating and Matching Vero User IDs]({{site.data.links.creating_and_matching_user_ids}}) to get a full understanding of how Vero manages user IDs.

Vero uses a uqique `identifier` to record each user in your Vero database. Vero's `reidentify`, or `alias`, endpoint allows you to update this unique identifier.

A unique `identifier` must be assigned to a User when they are added to Vero. This is typically a custom string or an an email address. 

An example, typical use case for the `reidentify` method is when a user is added to Vero from your public website *before* they have been assigned a unique identifier in your database (typically after a user signs up). In this scenario, most customers assign the new user a random `identifier` or use their email as the `identifier`. 

Once a user signs up, you will typically want to `reidentify` that user so that they are identified using their database-assigned ID. 

Our [API reference]({{site.data.links.vero_api}}) has the full details of the `reidentify` endpoint. A quick example, using our Javascript library, is below:

    _veroq.push(['reidentify', 'new_id', 'old_id']);

This will take the cookie that currently identifies a user and reassign that cookie to use the `new_id` you've specified. It will also update the user's record in your Vero database.

Once `reidentified` you can safely refer to the user using their new, assigned, ID with the standard `identify` and `track` endpoints. 