---
layout: articles
title:  What are tags?
categories: customer data
---

# What are tags?

Each customer profile in Vero can have many tags.

Tags are useful in situations where you want a customer profile to relate to many potential values. A good example would be customer preferences. For example, you might want customers to manually keep tabs on which customers are interseted in `shoes`, `skirts` and `trousers`. You could append tags to a customer's profile and use these tags to create segments.

Tags are a powerful way to enhance segmentation. They are useful for creating preference centres, emulating static lists or use Vero as a lightweight CRM, as tags can also be added inside Vero's user interface.

## Adding tags

{% capture image1 %}{{site.data.screenshots.vero.add-tag.image}}{% endcapture %}
{% capture title1 %}{{site.data.screenshots.vero.add-tag.title}}{% endcapture %}

Tags can be added in three ways:

1. Using Vero's API. You can refer to our API documentation]({{site.data.links.vero_api}}) for more information.

2. Using CSV imports. See the section titled *Creating static lists with tags* below.

3. Via the UI. When browsing a customer's profile in Vero, browse to the *Tags* tab and select the **New Tag** button to add a tag {% include inline-image.html image=image1 title=title1 %}.

## Removing tags

Tags can be removed in two ways:

1. Using Vero's API. You can refer to our [API documentation]({{site.data.links.vero_api}}) for more information.

2. Via the UI. When browsing a customer's profile in Vero, browse to the *Tags* tab and select the dropdown next to a tag and choose **Delete**.

## Creating static lists with tags

A common usage of tags is to import and segment a **static group** of customers.

You can import a CSV with a `tags` column, tagging each of the users with a tag, or tags, you specify. You can then create a segment using this tag and send out a newsletter.
