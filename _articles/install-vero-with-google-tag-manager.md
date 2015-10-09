---
layout: articles
title: Install Vero with Google Tag Manager
categories: integrations
---

# Install Vero with Google Tag Manager
    
Google Tag Manager is a fantastic product. It also makes it incredibly easy to get going with Vero.

## Step 1

Grab the following tag code below

{% include snippets/library.html %}

*Don't forget to change your API Key with the you can find in the app under Settings > Project*

### Step 2

Head over to [Google Tag manager]({{ site.data.links.gtm }}) and click **New Tag**. Configure your options so that it looks like this
![{{ site.data.screenshots.gtm.configure['title'] }}]({{ site.data.screenshots.gtm.configure['image'] }})

## Step 3

Now that our library is setup you need to configure Vero to track your customers. In Google Tag Manager, create a new tag that loads on every page. Copy and paste this code:

{% include snippets/identify.html %}

When setting up this code you need to tell us the current logged-in customer's ID and email address. The most common way to do this is to use a Macro in Google Tag Manager.

*You may need your developer's help if they have not already configured a Macro.*

Here's an example:

![{{ site.data.screenshots.gtm.macro['title'] }}]({{ site.data.screenshots.gtm.macro['image'] }})

Once that is configured you can ensure your tag looks like this:

![{{ site.data.screenshots.gtm.final-script['title'] }}]({{ site.data.screenshots.gtm.final-script['image'] }})

## Step 4

You're virtually setup and good to go! The final step is tracking events that are important to your business. This may take a series of tags, depending what you want to achieve. Here is an example that an eCommerce site could use. This tag is loaded on the first page of the checkout and tracks when a customer begins the checkout process! You can grab the example tracking code from 

![{{ site.data.screenshots.gtm.event['title'] }}]({{ site.data.screenshots.gtm.event['image'] }})

## Conclusion

And that's it! Now Vero will track your customers, events and get you well on your way. To ensure everything is working, check your 
[logs in the app]({{ site.data.links.app_logs }}) - you should be able to see data flowing.