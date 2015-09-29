---
layout: articles
title: 'Unbounce and Vero'
categories: integrations
---

# Unbounce and Vero

## What is Unbounce?
From start to finish we're big fans of [Unbounce](http://try.unbounce.com/) at Vero. Designed to make it easy for marketers to quickly and easily create and deploy landing pages it is the perfect platform to capture leads. By integrating Vero with Unbounce, you can capture the email addresses and actions of leads that sign up via your Unbounce landing pages.

There are two ways to install Vero with Unbounce:

1. [Using Webhooks](#webhooks) (fastest and cleanest method)
2. [Via the Javascript API](#javascript_api) ( more complex, use only if you need to track users across Unbounce landing pages and other sub-domains on your website..)


## 1. <a name="webhooks"></a>Webhooks - Unbounce integration the fast way.

Thanks to the Vero form builder and Unbounce's great UI, integration is straight forward.

The[Unbounce](http://try.unbounce.com/with-sendloop/)landing page platform has been designed with one thing in mind:**conversions**.

Below, you will find required steps to integrate your Unbounce landing page with Vero.

### Step 1: Create a form in your Vero account

The first step is to create a new lead capture form within Vero. We'll then use the details of this form to let Unbounce know where to send your leads!
Visit the [Vero form builder](https://app.getvero.com/tools/forms/new) and create a new form:

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/903/Screen_Shot_2013-02-18_at_10.04.17_AM.png)

You need to name the action for Vero to record when a customer fills out the Unbounce lead form. As Vero is **event-driven** this is an important step! Typical examples include
Downloads eBook/Whitepaper/Checklist, Completes lead generation form XYZ, Expresses interest in demo, etc.

Once done, click 'Generate Code'.

### Step 2: Add the Unbounce webhook

In a new window, login to your Unbounce account and, after logging in, click on the landing page you are planning to integrate with Vero.
On the landing page dashboard, scroll down and on the right side you will see a section called "Leads & Form Integrations". Click "WebHook: POST to URL":


![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/904/ss5.png)

       After clicking, a pop-up will be displayed to you asking for "URl to Post".


In this field you want to paste the URL that you generated when using the Vero form builder:


![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/905/Screen_Shot_2013-02-18_at_10.08.24_AM.png)


**Important:**
The URL provided to Unbounce must be a combination of the form URL with "/unbounce". For example, if the Vero form URL is:

  `https://app.getvero.com/forms/abc123`

then the URL you provide to Unbounce is:

`https://app.getvero.com/forms/abc123/unbounce`

Simply paste this URL into the pop-up on Unbounce:


![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/906/ss6.png)

Once it’s entered, Unbounce will verify the URL and display you a success message:


![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/907/ss7.png)

Click 'Configure Field Mapping' to configure the parameters recorded in Vero.

### Step 3: Configure your field mappings (Important)

In this step you can map the customer attributes from your Unbounce form (such as First Name, Last Name, etc.) against your customer profiles in Vero.

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/908/Screen_Shot_2013-02-18_at_10.12.58_AM.png)

You **must** map the "Email Address" Unbounce Form Field to a customer WebHook Field called 'email', like so:

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/910/Screen_Shot_2013-02-18_at_10.13.57_AM.png)

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/911/Screen_Shot_2013-02-18_at_10.14.04_AM.png)

Other Unbounce Form Fields can be mapped as required. When mapping to Vero's WebHook form fields you need to use the 'Add new field' option and name the variable using the syntax `user_variable_name`. I.e. put `user_` out front. You should also add `_` in the places of spaces in variable names. Vero strips these out anyway!

For example, you would map Unbounce Form Field 'First Name' to Webhook Field Name `user_First_Name` and so on. This allows you to store the data you collect from leads against their profiles in Vero:


![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/912/Screen_Shot_2013-02-18_at_10.17.39_AM.png)

Once you are happy, click 'Save settings' and you are off and away.

That's it! Your Unbounce leads will now be sent to Vero in real-time :).



## 2.) <a name="javascript_api"></a>Javascript API Integration - The complex way

### Why use Javascript and Unbounce?

This method of installation uses our Javascript API to track Unbounce leads. This is for advanced setups and you should have some basic Javascript knowledge before attempting this approach. If you haven't seen the [Webhooks instructions](#webhooks) above, take a look! (it's easier). If you want to track customers across your Unbounce pages and other sub-domains on your website then you should use the Javascript approach outlined below.

Vero's Javascript library drops a cookie to track your customers. If you have received their permission to market to them on an Unbounce landing page, using our Javascript integration will drop a cookie that allows you to track them across other sub-domains. This is useful in many situations, such as:

- eCommerce stores using Unbounce to capture leads for particular products. Tracking customer checkout on the primary domain requires Javascript integration.
- B2B SaaS businesses using Unbounce pages as inbound lead capture forms, wanting to trigger campaigns across Unbounce pages, the blog and inside the software.
- Customers using a mixture of Unbounce and other survey or capture software.

### Step 1: Install the Javascript library

Goto the [Install our Javascript](http://www.getvero.com/docs/install-our-javascript-snippet) step of the Vero documentation. Copy the first snippet from this page (the Vero library):

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2617/Screen_Shot_2013-11-20_at_10.02.44_am.png)

Go back to the Unbounce editor and select `Javascripts` at the bottom of the screen.

Paste the code you copied into the editor and name the snippet "Vero Library". Choose 'head' in the placement drop down:

![{{site.data.screenshots.unbounce.script['title']}}]({{site.data.screenshots.unbounce.script.image}})

### Step 2: Track conversions on the Unbounce form

In this step we'll install the code to actually track when a customer converts on your Unbounce landing page. In the Unbounce editor, select the Form Confirmation Dialog editor:

![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2619/Screen_Shot_2013-11-20_at_10.08.49_am.png)

Then, add a new Javascript and call it "Vero Conversion".

Firstly, copy and re-paste the initial Javascript from step 1 above (the main Vero library).

Then, copy and paste the following code after it:

    <script type="text/javascript">
      var _veroq = _veroq || [];
      var getUrlParams = function () {
        var params = {},
        hash;
        var hashes = decodeURI(window.location.href).replace(/\+/g," ").slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
          hash = hashes[i].split('=');
    </script>


