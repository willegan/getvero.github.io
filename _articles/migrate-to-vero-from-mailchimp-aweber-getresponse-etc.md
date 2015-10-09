---
layout: articles
title:  "Migrating to Vero from a list based provider"
categories: data
getting_started: true
---

# Migrating to Vero from a list based provider

In Vero, there are no lists.

Instead of lists, Vero stores a **single record** for every customer (or user, or contact, or subscriber – whatever term best suits your business, though we'll use the term *customer* from here on out).

Instead of adding customers to new lists, you track *what customers do*. What pages they view, what properties they have (their age, gender, location) and what emails they've received in the past. Over time each customer's profile gets more and more detailed. 

This is where Vero really shines – as time passes you get collect more and more information about your customers to improve your marketing.

For businesses using Vero that have come from Mailchimp, ExactTarget, Campaign Monitor, Get Response or other platforms, this can take a little getting used to, but the migration is pretty simple. 

We wrote this guide to help you out moving from any of the traditional email platforms to Vero. 

There are just three steps from sending in your old provider to sending in Vero.

##1. Migrating your subscriber list(s)

No matter what traditional email tools you use, you are going to have a list (or multiple lists) of customers to bring into Vero.

At Vero, we **do not** require you to re-opt-in your entire list, though we manually approve all accounts for sending before you begin. 

To import your list, visit the *[Import/Export]({{site.data.links.import}})* menu in Vero. From this menu you can elect to import customer or event records. 

For now, you will want to import your customers (users, contacts, subscribers, etc.) Select import **Customers via CSV** at the top right. This will present you with an example of the CSV format you need to use to import customers into your database.

To import your list(s) into Vero you will need to export each from your current email provider. Typically you will then have a CSV with all of the data you had available on each customer. This should include an `email` column on the left and then individual columns for each piece of data you have on your customers (age, gender, etc.) 

Here's an example:

  email,gender,age
  cersei@lannister.com,M,34
  tyrion@lanniser.com,M,30
  
You can simply import a list like this straight into Vero by following the prompts. You can read more about [CSV imports here]({{site.data.links.import_customers}}).

Before importing, however, we recommend adding an extra column called `tags`. In Vero a tag can be added to a customer's profile as a way to store extra data about that customer. 

In this column, we recommend creating a tag based on the **name of the list in your old provider**. For example, if we exported a CSV from a list called 'Blog subscribers', we might add a column with a tag called `blog-subscribers`:

  email,gender,age,tags
  cersei@lannister.com,M,34,blog-subscribers
  tyrion@lanniser.com,M,30,blog-subscribers
  
This means you'll **always** have a record of where that customer was in your old system, which can be handy for initial troubleshooting.

Simply repeat this process for every list in your current email provider.

**Note** that if your list is more than 50,000 people long, please [email our support](mailto:support@getvero.com?subject=Help me import my email list :\)) and we'll help you get it done directly in our backend.

##2. Migrating your templates

Migrating your templates to Vero differs in detail from platform to platform, so in this guide we'll outline the fundamentals. We can also help answer any migration questions [via our support email](mailto:support@getvero.com).

Some tools, like Mailchimp or Campaign Monitor, allow you to design full-body HTML emails **from scratch**, as this is one of their primary use-cases.

At Vero, you don't create a full body HTML template from scratch but, instead, bring your own template. This gives you the power to can bring in **any** HTML template you already use with relative ease.

To migrate a template from Mailchimp or other email provider, you should download a copy of your HTML template and take the following steps:

1. Remove all dynamic merge tags and replace with Vero's merge tags. You can read more about using [Vero's merge tags here](http://www.getvero.com/help/designing-an-email/how-do-i-insert-merge-tags-using-liquid-in-my-emails/). For example, you'd replace Mailchimp's `*|FNAME|*` with Vero's `{{user.first_name}}` or similar.
2. Ensure that you are no longer referencing images on your old provider's servers. Make sure you upload and host your own images or refer a local version that you can upload into Vero.
3. Once uploaded in Vero, you can select a template from your Template Gallery to use in each campaign. We have a point-and-click WYSIWYG editor. The final step is to mark any headings, table cells, images or blocks of text taht you want to make point-and-click editable with the `vero-editable` CSS class. This is a one-time task.

Get a complete run down of how templates work in Vero with our [help guide](http://www.getvero.com/help/designing-an-email/how-do-i-use-html-templates-in-vero/). If you follow the three steps above, you'll have a template setup for long-term use in Vero that looks and feels just as it always has in your old provider. 

**Note:** we do recommend a designer with HTML experience brings your templates across. This will mean you get them right from the word go and that they are optimised for use with Vero, saving you time later.

##3. Check your email domain signing

This final step is optional, and depends on your current email provider setup. 

By default (as with Mailchimp and most ESPs), Vero will send your emails on our shared email infrastructure (powered by Mailgun). We'll also send emails from some of our own domains, rather than. 

At Vero, we generally recommended generating and adding DKIM and SPF records that allow you to authorise your own sending domain in order to get the best deliverability possible for your emails. 

If you have already configured your individual domain for sending in your current email provider, then doing so in Vero is the right way to go. You can read more about how to reuqest your domain keys in our help guide.

--

That's it! If you follow these steps, you can literally start sending with Vero!