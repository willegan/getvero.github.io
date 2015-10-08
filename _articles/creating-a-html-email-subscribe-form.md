---
layout: articles
title:  "Creating a HTML email subscribe form"
categories: data
---

#Creating a HTML email subscribe form

If you are coming from an email service provider such as Mailchimp, you will be familiar with the concept of HTML-based email forms.

These forms allow you to collect a subscriber or customer's email address, name and other (custom) details easily using a little HTML on your website.

##Vero subscibe forms

Vero also supports email forms, with one key difference. Traditionally, when a contact fills out an email form they are added to a list. In Vero, rather than being added to a list, a customer that fills out a web form triggers an event. That event could be as simple as `Subscribes to blog`.

You can then use this event to create a segment or automate a behavioral email: so you get twice the power from a single web form!

##Step 1. Create a form

To generate a form, head to *Froms* and you'll be shown Vero's point-and-click interface to create a form:

![{{ site.data.screenshots.vero.subscribe-form-properties['title'] }}]({{ site.data.screenshots.vero.subscribe-form-properties['image'] }})

Vero forms always collect the customers `email` but you can collect any fields you want. We will show you fields you've collected in the past on the left hand side.

You must then define the event that will be triggered when the customer fills out this particular form.

The final part of our form builder allows you to define what your customers see after completing the form:

![{{ site.data.screenshots.vero.subscribe-form-event-trigger['title'] }}]({{ site.data.screenshots.vero.subscribe-form-event-trigger['image'] }})

##Step 2: Copy and paste your new form

Select 'Generate form' to generate the HTML for your new form:

![{{ site.data.screenshots.vero.subscribe-form-code['title'] }}]({{ site.data.screenshots.vero.subscribe-form-code['image'] }})

Select **copy to clipboard** and paste this code in your CMS or website and you are good to go!

By default, we'll show them a confirmation screen that looks like this:

![{{ site.data.screenshots.vero.subscribe-form-success'title'] }}]({{ site.data.screenshots.vero.subscribe-form-success['image'] }})

You can define a screen if the customers fails to complete the form successfully (i.e. enter an invalid email) or when they do complete the form successfully. Generally this would be a custom "Thanks for subscribing" page.