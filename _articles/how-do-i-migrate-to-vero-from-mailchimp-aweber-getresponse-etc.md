---
layout: articles
title:  "How do I migrate to Vero from Mailchimp, Campaign Monitor and other ESPs"
categories: data
getting_started: true
---
  
#How do I migrate to Vero from Mailchimp, Campaign Monitor and other ESPs
    
In this article we will discuss how you can migrate from a more traditional email service provider (such as Mailchimp, which we'll use as an example throughout) to start sending 
[email marketing newsletters with Vero](https://www.getvero.com/docs/newsletter-email-campaigns).
 
     Vero is different from traditional email service providers in one key way: rather than using lists (static groups of customers), Vero builds individual profiles of each subscriber/customer in your database based on their actions and attributes. You can then create segments (dynamic groups of customers) that are always up to date.
 
     There are two key components to think about when migrating from an existing platform:
*Migrating your templates
	
*Migrating your entire subscriber base
 
 We'll go through each of these in this guide.
 
##1. Migrating templates to Vero
###Exporting from your email provider
 
    In your email marketing software you will likely have built up templates that you use regularly. A template is simply a HTML file and series of images that you can use over-and-over when creating email campaigns.
 
    In your email marketing provider, visit the templates section:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3617/Screen_Shot_2014-03-03_at_2.55.30_pm.png)
 
In Mailchimp this is under Campaigns and then My Templates at the top right.Once you have found the template you want to import into Vero, select options and choose to 
Export this template:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3618/Screen_Shot_2014-03-03_at_2.55.53_pm.png)
 
    You will no have a ".html" file on your local hard drive that you can import into Vero. 
 
###Altering dynamic tags
 
    Nearly all email service providers have different dynamic tags for inserting/merging details about your customers, such as their first name, and other information, such as unsubscribe links.
 
    You will want to change all references to Vero's dynamic tags. You can get a full list of 
[Vero's dynamic tags here](https://www.getvero.com/knowledge-base#/questions/50514-Definitive-list-of-dynamic-tags).
 
    As an example, the following is an example of changing tags from Mailchimp:
 
 
**Mailchimp name : Vero equivalent**
*|FNAME|* : {{user.first_name}} 
    *|UNSUB|* : {{url.unsubscribe_link}}
 
    ...and so on. The trick is to open your template in a tool like Sublime and replace these variables. It only takes a few minutes:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3620/Screen_Shot_2014-03-04_at_11.34.43_am.png)
 
 
This would be changed to the following.
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3621/Screen_Shot_2014-03-04_at_11.35.43_am.png)
###Altering images
 
    Depending on your template and where you exported it from you may also need to update images. In the case of Mailchimp, exported templates 
**still reference Mailchimp's**
cached copies of your images. You will need to update these references.
 
    For example you'd want to change a link like "http://gallery.mailchimp.com/27aac8a65e64c994c4416d6b8/images/280gmscreen1.jpg" to a file hosted on your own domain.
 
###Importing the template into Vero
 
    Login to Vero and head to the 
[HTML Templates](http://app.getvero.com/templates) menu. Select 
Upload HTML Template at the top right.
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3619/Screen_Shot_2014-03-03_at_2.58.07_pm.png)
 
    Choose the file you have on your computer (the edited .html file) and select upload.
 
    On the next screen you'll be asked to name your template:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3622/Screen_Shot_2014-03-03_at_3.00.45_pm.png)
 
    Hit 
Create Template and you're done!
 
##2. Migrating your subscribers
###Exporting your lists
 
    The next step is to migrate any lists you have into Vero. This is a simple process thanks to Vero's CSV import functionality.
 
    In your email service provider, visit the 
Lists section and, for each list, Export the customers. 
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3623/Screen_Shot_2014-03-04_at_11.46.56_am.png)
 
In Mailchimp this is under Lists > Choose your list > Export List. You'll then have to hit Download.
 
###Cleaning your exported CSV
 
    Open the resulting CSV file and remove any fields that you don't want to import into Vero. The only fields you 
**need**
 to have for your Vero customers are 
email and, if you have it, 
timezone(an integer). 
 
    You will also want to 
**add a column**
 called 
tags and add a tag that relates to this group of customers (e.g. the original list name). In the example above we might use 'blog-subscribers' for the list name 'Blog subscribers'. Ensure your tag has no spaces.
 
    Here's an example of a cleaned up export:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3626/Screen_Shot_2014-03-04_at_11.57.27_am.png)
 
###Importing your subscribers into Vero
 
    Login to Vero and visit the 
[Customers](http://app.getvero.com/customers) menu. At the top right, select 
Import > Import via CSV.Select the CSV file you have exported and select 
Upload CSV. On the next screen you'll be asked to confirm which columns match to which Vero fields. For email and tags, ensure the 'email' and 'tags' fields are selected. For the rest, select 
Create or update field X. This means that the relevant property will be added to each user property.
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3628/Screen_Shot_2014-03-04_at_11.58.30_am.png)
 
   The CSV will import and email you when you're done.
 
###Creating manual segments (optional)
 
   Having imported customer profiles with these tags you can, if you want, create a segment that represents your lists as it was when it was exported from your previous email service provider. An example would be:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3627/Screen_Shot_2014-03-04_at_12.01.01_pm.png)
 
   That's it. You're now fully migrated to Vero and can begin sending newsletters and improving your segmentation.
 
   If you have any questions, 
[send us an email](http://mailto:support@getvero.com).
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
