---
layout: articles
title:  "Update a HTML Template"
categories: email design
getting_started: true
---

#Update a HTML template

##Template basics

If you haven't already you should read the [how-to](html-email-templates) for setting up your first HTML template. The how-to describes importing a template, selecting it when creating or editing a campaign and defining the templates contents for that specific campaign. This how-to explains what happens if you want to edit the master HTML template as this will affect all campaigns.

##Understanding the template structure

When importing a template you are required to add the class

`"vero-editable"`

to any tag whose contents you want to be able to define when creating a new campaign. These include:

- **div** and **td** tags:

  `<div class="vero-editable">`

- **a** (anchor) tags:

  `<a href="http://casterlyrock.com" class="vero-editable">`

- **img** tags:

  `<img src="http://casterlyrock.com/tywin-lannister.png" class="vero-editable">`

- **img** tags with surrounding **a** (anchor) tags. I.e. images that are links:

  `<a src="http://casterlyrock.com" class="vero-editable">
  <img src="http://casterlyrock.com/tywin-lannister.png">
  </a>`

When you create or edit a campaign and define the content for a HTML template you are essentially taking a copy of the master HTML template and customising it for the campaign in question. Vero is pretty smart and takes note of every change you make to a `"vero-editable"` tag. It stores these along with your new campaign so that they can be used for future reference.

**NOTE:**
Elements with the `"vero-editable"` class are also required to have some default content.

##Editing a master template

To edit a master template you simply visit the [templates](http://www.getvero.com/templates) section and click 'Edit HTML' next to a template. This will open a simple code editor that allows you to make quick changes to your code. You are able to change whatever you want before hitting 'Update template', saving yourz changes instantly.

##What happens to my campaigns when I make a change?

Vero knows what content you defined in a HTML template when creating a campaign. When you update the master template, Vero automatically ensures any updates are captured and automatically applied to our outgoing campaigns. An example should illustrate this a little better. Let's say you had a master template with the following section:

`<td class="vero-editable">Lorem ipsum</td>`

Supposing you had setup a campaign and, when defining the content, altered Lorem ipsum to say 'Hello world', Vero would remember this change. If you then edited the master HTML template to the following:

`<td class="vero-editable" style='color:red;'>Lorem ipsum</td>`

Vero would automatically re-apply the content change so that your campaign continues to go out with the correct wording as well as the new changes.

##What if there is a conflict?

Conflicts arise when you edit a master template and introduce new `"vero-editable"` areas. In these instances we do not know which text goes where for the underlying campaign. Instead of trying to do things automatically, we'll keep sending your campaign using the original version of the template and let you know that you need to manually re-define the content of the campaign in order to see your new changes go live. We'll popup a notice in the templates section when you need to manually update any campaigns.

##Further questions

Templates can be tricky and every email vendor has it's own little quirks. If you have questions about how a template will appear, or how to import a template from another email vendor, just drop us a line via [support@getvero.com](mailto:support@getvero.com) and we'll help you out ASAP!

If it's a quesiton, show the 'was this helpful'

Was this article helpful?


