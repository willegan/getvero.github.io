---
layout: articles
title:  "Using HTML templates in Vero"
categories: email design
getting_started: true
---

# Using HTML templates in Vero

## Template management in Vero

Vero gives you the ability to bring your own template. Vero supports media queries and fully responsive HTML templates. 

To use a HTML template in a Vero campaign, upload your template to your Vero template library. When creating a newsletter, behavioral or transactional campaign, you can select a template to use from those that you have previously uploaded to your template gallery.

To make the most of Vero's templates you can mark images, heading, paragraph blocks and other components as `vero-editable`. When you select a template to use in a campaign, any `vero-editable` sections are available for point-and-click editing. This means you can change the content of an email without altering (or damaging) the styles you've created.

![{{site.data.screenshots.vero.templates.wysiwyg-editor.title}}]({{site.data.screenshots.vero.templates.wysiwyg-editor.image}})

Vero's WYSIWYG editor highlights `vero-editable` blocks with an *Edit* button, as in the above screenshot.

## Adding vero-editable blocks

To make a section of a HTML template `vero-editable` in the WYSIWYG editor, all you need to add the CSS class `vero-editable` to the HTML element you want to make editable.

Elements that support `vero-editable` tags are below. We've included an example of how you add the class correctly:

- div and td tags, `<div class="vero-editable">`
- a (anchor) tags, `<a href="http://casterlyrock.com" class="vero-editable">`
- img tags, `<img src="http://casterlyrock.com/tywin-lannister.png" class="vero-editable">`
- img tags with surrounding a (anchor) tags. I.e. images that can be links `<a src="http://casterlyrock.com" class="vero-editable"><img src="http://casterlyrock.com/tywin-lannister.png"></a>`

Each of these `vero-editable` blocks is handled intelligently by Vero. Images marked with `vero-editable` will be handled differently from text blocks, and so on. Here's an example of a `vero-editable` image.

![{{site.data.screenshots.vero.templates.vero-editable-image.title}}]({{site.data.screenshots.vero.templates.vero-editable-image.image}})

### Tips to make life easier

There are a two rules of thumb when marking editable zones. Firstly, we don't recommend putting one `vero-editable` tag inside another (nesting).

Secondly, it is better to put `vero-editable` tags directly on the desired editable object (e.g. an image), rather than a containing element. This is better than putting lots of different elements inside one big `vero-editable` block (such as a `<div>` tag).

Finally, wherever you can, put CSS styles in a `<style>` tag at the top of your template, so they can be inlined by Vero's templating engine at send time.

## Importing a template

You can upload a HTML template or copy and paste HTML into our template creator to add a template to Vero.

<blockquote class="snippet">At this time, images must be hosted remotely (though if you have heard otherwise from our success team, we may have agreed to help you import them or give you access to our automated tool that lets you upload ZIP files containing images).</blockquote>

After uploading a template, and before saving it, Vero checks the validity of your `vero-editable` sections and shows you the places where you have marked up your template incorrectly. This is to help ensure your emails render as cleanly as possible in all email clients.

![{{site.data.screenshots.vero.templates.errors.title}}]({{site.data.screenshots.vero.templates.errors.image}})

The above shows an example of the status messages you'll get upon saving a new template.

Vero will re-run these checks whenever you update a base template.

## Updating a template

In Vero, templates are **inherited** by each of the email campaigns that use them. When you update a template, Vero will try to automatically apply those changes to any campaigns that inherit from that template. Where a clean merge cannot be guaranteed, Vero will notify you that you need to manually refer the campaigns relying on that template.

![{{site.data.screenshots.vero.templates.template-library.title}}]({{site.data.screenshots.vero.templates.template-library.image}})

When on the *Templates* menu, you can tell whether a template is being used by any campaigns using our traffic lights. Templates that are currently used in a campaign are marked in green. Those that are not in use are marked with gray. Templates that have been updated, yet the changes have not been safely merged, are marked in yellow.

You can re-upload or edit your templates at any time. To do so, just select their name or *Edit* from the menu next to the template you want to update.

As an example, if you have a template with a header and a footer and a singule `vero-editable` block in the middle, Vero will store any changes you make to this `vero-editable` section, per campaign. If you update the header, Vero will automatically update all of the child campaigns, merging in the updates underneath your own changes to the `vero-editable` section.

![{{site.data.screenshots.vero.templates.unmerged-changes.title}}]({{site.data.screenshots.vero.templates.unmerged-changes.image}})

If you add or remove a `vero-editable` region, Vero won't be able to correctly merge your previous campaign updates onto the new template, as it will recognize you've changed the structure of hte underlying campaign. In this scenario, the template will be marked with the yellow traffic light. Selecting *View related campaigns* from the dropdown next to the template will reveal the campaigns that have conflicts and need a manual review.

By clicking on the name of each campaign, you can manually review Vero's attempt to merge in your content updates. Once happy you can select *Save and exit*. Until you re-save this campaign, it will use the old version of your template, to avoid ugly or incomplete emails going to your customers. Once saved, the new version will go live.