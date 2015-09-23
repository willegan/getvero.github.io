#How do I use HTML templates in Vero?

Using the Templates menu in Vero, you can upload any custom HTML template you like. Vero fully supports media queries and responsive templates.

##How templates work in Vero

When you upload a template to Vero, it can be used again and again as you create new campaigns.

When creating a Newsletter, Behavioral or Transactional campaign, you can select a template to use from those that you have previously uploaded to your template gallery.

![Select aa HTML email template](http://www.getvero.com/wp-content/uploads/2015/05/choose-a-template.png)

After you have selected a template, you are taken to a screen where you can point and click various elements in your template and edit them using our WYSIWYG editor.

![Use Vero's WYSIWYG template editor](http://www.getvero.com/wp-content/uploads/2015/05/edit-vero-editable.gif)

To use this workflow, you are required to markup which sections of your template should be editable using point and click.

##Adding vero-editable blocks

To mark a section of aa HTML template editable in the WYSIWYG editor, you need to add the CSS class vero-editable to the underlying element.

Elements that support vero-editable tags, including an example of each, are:

- div and td tags, `<div class="vero-editable">`
- a (anchor) tags, `<a href="http://casterlyrock.com" class="vero-editable">`
- img tags, `<img src="http://casterlyrock.com/tywin-lannister.png" class="vero-editable">`
- img tags with surrounding a (anchor) tags. I.e. images that can be links
    <a src="http://casterlyrock.com" class="vero-editable">
      <img src="http://casterlyrock.com/tywin-lannister.png">
    </a>

###Things you must know

There are a few rules of thumb when marking editable zones:

Never nest vero-editable tags, as it is unsupported.
It is better to put vero-editable tags as close to the desired editable object (e.g. an image) as possible. This is better than putting lots of different elements inside one big vero-editable block.
Wherever you can, put CSS styles in a `<style>` tag at the top of your template.

##Importing a template

You can upload an HTML template or copy and paste in HTML to add a template to the template gallery.

**Note:** At this time, images must be hosted remotely (though if you have heard otherwise from our success team, we may have agreed to help you import them or give you access to our automated tool that lets you upload ZIP files containing images).

When uploading a template, Vero checks a series of rules and notifies you of places where you have marked up your template incorrectly. This includes basic rules for ensuring your emails display best in all email clients.

Some issues you can merely dismiss and continue with your save. Others will force you to edit the code or re-upload a template so that it operates correctly. Here's an example of some status messages:

![](http://www.getvero.com/wp-content/uploads/2015/05/vero-warnings.png)

Vero checks to ensure your template is compliant whenever you update it.

##Updating a base template

You can tell whether a template in the template gallery is in use using our traffic lights. Templates that are being used are marked as green. Those that are not in use are marked as grey:

![](http://www.getvero.com/wp-content/uploads/2015/05/templates-in-use.png)

You can re-upload or edit your templates at any time. To do so, just select their name or Edit from the right hand menu.

When you change a template that is being used by a number of campaigns, Vero will merge in your changes. If you had a template with a header and a footer and a singular vero-editable block, Vero stores your changes and, if you update the header, ensures your changes are visible on all campaigns that use that template.

If you add or remove a vero-editable region, however, Vero won't be able to correctly merge your previous campaign updates onto the new template. In this scenario, after saving your template, the template will be marked with an orange traffic light. Selecting View related campaigns from the dropdown next to the template will reveal (as marked with an orange traffic light) the campaigns that have conflicts.

By clicking on the name of each campaign, you can manually review Vero's attempt to merge in your content updates. You can then alter these updates and, once happy, hit Save and exit. Until you re-save this campaign, it will use the old version of your template, to avoid ugly or incomplete emails going to your customers!

##An old video

This video will give you a reasonably old and very quick overview of how our templates work. We didn't want to take it down until we'd replaced it, so please let us know if it's more of a hinderance than a help!

This video was shot using an older version of the Vero UI. We're working on updating it as quickly as possible.