---
layout: articles
title:  "Setting up and installing Vero"
categories: data
getting_started: true
common_issues: true
---

# Setting up and installing Vero

Vero makes it easy to create email campaigns that target users based on what they've done (e.g. `Viewed a product`) or haven't done (e.g. `Checked out`) as well as segmenting based on user specific variables (e.g. their `country` or `age`). The basis for this segmentation is tracking real time data about each of your users, including their demographic data and what they do in your mobile or web application.

There are two key steps to getting setup with Vero:

1. Tracking your users and what they are doing, and
2. Writing and sending your first email campaign

## Plug and play solutions

Two ways you can quickly get data into Vero include [Segment]({{site.data.links['segment']}}) and [Zapier]({{site.data.links['zapier']}}) (in beta, please [email us]({{site.data.links['email_us']}}) for instant access).

If you're already setup on these platforms you'll find them a quick way to get going, without installing Vero's API directly on your website.

## Installing Vero on your site or in your app

To get the most value out of Vero you should install our API and track what users do on your website or in your application in real time.

You need some knowledge of either Javascript or another coding language in order to to integrate Vero's API. Read our [API documentation]({{site.links.vero_api}}) to understand how to set Vero up in detail.

In summary, the Vero API has two key functions. The first is adding or updating a user in your Vero database. We call this `identifying` a user.

The second is tracking what `events` a user takes. Events are defined by you and typical examples would be things like `Views a product`, `Begins checkout`, `Logs in`, `Subscribes to blog`, etc.

### Supported libraries

You can use [Vero's API](http://www.getvero.com/api/) with any coding language, but we currently have helper libraries for these languages:

- [Ruby](http://www.getvero.com/api/ruby/)
- [Python](http://www.getvero.com/api/python/)
- [PHP](http://www.getvero.com/api/php/)
- [Perl](http://www.getvero.com/api/perl/)
- [iOS](http://www.getvero.com/api/ios/)

You can also use our [javascript](http://www.getvero.com/api/) library.

## Setting up your first campaign

To get the most value out of Vero you should setup a triggered campaign. These are automated emails that are triggered when a customer takes a certain action, so they work whilst you sleep.

There are three types of emails you can send in Vero:

- **Newsletters** are emails that are sent at a specific time, to a specific group of users.
- **Behavioral** emails are marketing emails that are sent when a user does or does not do a certain action.
- **Transactional** emails are sent every time a user does something, such as `Resets their password`.

To get the most out of Vero, try setting up each of these campaign types.
