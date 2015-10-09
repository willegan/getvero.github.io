---
layout: articles
title:  "Getting Started Guide"
---

TO DO:
1. Review Domain Auth Section
2. Review links - new help docs urls


#Getting Started Guide

Welcome to Vero! We're thrilled you've chosen to send amazing marketing campaigns with us.

This guide is your step by step guide to getting from 0 to email marketing hero.

Use this guide for: 

- **[Setting up your project](#1)**
- **[Add multiple team logins](#2)**
- **[Setup Domain Authentication](#3)**
- **[Tracking real time data](#4)**
- **[Importing data](#5)**
- **[Importing your first templates](#6)**


<h2 id="1">Setting up your project</h2>

By default your Vero account will have a Production and a Sandbox project. You can add as many projects as you’d like. Each project is it’s own, siloed environment with its own API Keys and user database. [Learn more about a project](/articles/what-is-a-project.html).

Projects are useful for testing as you can set projects to different send modes:

- **Live** - All emails are triggered and sent normally.
- **Test** - Send all emails triggered by customers to a single email address (for testing).
- **Offline** - Data is still captured and emails are still ‘triggered’, just not sent, so you can see them in the logs.

By default, your Sandbox project is set to **offline** as denoted by the gray color of the project in the sidebar. We recommend using the Sandbox project with a testing server or test environment, if you have one. We also recommend setting your Production project to **Test** (orange) when you initially start sending live data to Vero, just to be safe.

*Note* that you can clone campaigns between projects by selecting **[Clone](/articles/cloning-an-email.html)** in the dropdown next to a saved campaign, however user data is isolated to each project.

###To Do:

1. Setup your test server environment to use Sandbox project in Vero (by [grabbing your API Keys](https://app.getvero.com/settings/project) when logged into your **Sandbox** project). Ensure this project is in **Offline** mode.
2. Ensure you set your Production project to **Test** when you initially begin tracking data in  your production environment, to be on the safe side.



<h2 id="2">Add multiple team logins</h2>

The creator of a Vero account is the primary administrator. 

Additional users can be invited to your Vero account by visiting the *[Account > Team](https://app.getvero.com/account/team)* page. Team members are sent an invite email and invited to create their own password (you will see Invite Pending next to any user that has not yet accepted their invite and created a password).

For each team member, access can be granted to each individual project within Vero. For example, a user may have access to your Sandbox project but not your Production project.

There are three levels of account access in Vero:

- **Administrator** – users with this access level can manage your subscription, add other users and have full access to data and campaigns.
- **View / Edit** – users with this access level can create, delete and otherwise manage all of your campaigns. They cannot manage your subscription or add other team members.
- **View only** – users with this access level can view campaigns and campaign results, but cannot make changes.

###To Do:

1. Have a Vero administrator add new team members to Vero under the *[Account > Team menu](https://app.getvero.com/account/team)* area.


<h2 id="3">Setup Domain Authentication</h2>
#REVIEW THIS!!

Deliverability is super important and we take it seriously at Vero. Deliverability is the word used to describe the process of getting emails into inboxes. 

By default, Vero works with [Mailgun](http://mailgun.com/) (a company owned by Rackspace) to help ensure we send your emails with the highest levels of success. 

***REVIEW*** One of our success engineers will inform you about our plans for allocating dedicated IPs and warming up those IPs if your setup and scale demand this, otherwise you can assume all is in order and handled by Vero’s backend engineers – we do the hard work for you. Feel free to ask questions at any time.

You do however need to setup domain authentication. To do this, ensure you add a domain to your primary project (typically the default Production project) in Vero. Have an administrator head to *[Settings > Project details](https://app.getvero.com/settings/project)* and add the domain you will be sending from. From there, visit the *[Settings > Email Delivery](https://app.getvero.com/settings/providers)* menu and select **Request DNS Records**. You will then need to add the required DNS records to your sending domain.

You can [read a detailed guide to domain authentication in Vero](/articles/how-to-setup-my-domain-signing-and-remove-via-getveromail-com-from-your-emails.html).

Note that you may also add your own Mailgun or Sendgrid account for email delivery. Vero will then send emails out through one of these accounts. This is generally done by customers that have a long history with one of these providers or a shared infrastructure or other reason for doing so.

###To Do:

1. Have a Vero administrator add the domain you want to send your emails from under *[Settings > Project details](https://app.getvero.com/settings/project)* in your primary production project. Domain setup is per project so you want to configure your live setup in your ultimate Production project.
2. Have a Vero administrator request the DNS records in that same project, found *[Settings > Email Delivery](https://app.getvero.com/settings/providers)*, but selecting Request DNS Records.
3. Add the DNS records to your domain and return to Vero a few hours later and select Verify DNS Records on the *[Settings > Email Delivery](https://app.getvero.com/settings/providers)* page. Each of the records will go green once successfully verified, and emails will now be sent via your domain.

4. **NOT SURE ABOUT THIS ONE - could we have it below?** See [Importing data](#5) below and import a CSV of unsubscribed users/addresses before sending, by importing a person CSV and having a tags column with the value unsubscribed for each user.
5. **NOT SURE ABOUT THIS ONE - could we have it below?** See [Importing data](#5) below and import a CSV of previously bounced users/addresses before sending, by importing a person CSV and having a tags column with the value vero-unsubscribed-hard-bounce for each user.

<h2 id="4">Tracking real time data</h2>

One of the key elements that gives Vero its power is the ability to track data about your customers and what they are doing in your application or website, **in real time**. Traditional email tools typically synchronise with databases or stataic lists at set intervals. Tracking user properties and user events with Vero is where you’ll see the biggest wins.

To get the most out of Vero, **we recommend integrating with our API**. Most customers install our Javascript library on their website. This automatically manages cookie tracking and other benefits such as automatically managing API call failures.

You can find the Javascript library and installation instructions as part of our [API library documentation](https://www.getvero.com/api). Our library is built so that it loads after your pages, with redundancy in mind, so it will not slow down your site in any way.

Many customers also track extra user properties or events using our backend API libraries, in Python, Ruby, PHP, Java, Perl and iOS. These can all be found in our [API library documentation](https://www.getvero.com/api). You may use both the front-end Javascript library and extra API calls in tandem.

**Note that the key to using our API is to identify users using a unique identifier or ID (interchangeable terminology in the world of Vero). If you do not have a unique ID per user, we recommend using the email address as the ID itself.**

###To Do:

1. [Install the Vero Javascript library](https://www.getvero.com/api/javascript/) on your website, including making a Vero identify call whenever a customer signs up, fills out a form or otherwise gives you permission to email them.
2. Determine whether you want to [automatically track pageviews](/articles/track-pageviews-with-veros-api.html) for users that have been identified (by default, Vero does not).
3. Track specific events using our Javascript library. Focus on key lifecycle events such as `Signed_up`, `Viewed_product`, `Used_feature_X`. Events can be named **however you want** and are one of the keys to using Vero with power.
4. Track any extra events via our API on your backend using one of our backend libraries.



<h2 id="5">Importing data</h2>

Having determined what data you are going to track on the front end, it is typical to want to ensure your data history (or at least the most important parts of it) is available in Vero.

The easiest way to import data into Vero is to use CSVs - To do this, navigate to the **'Import/Export'** section from the sidebar. 

You can import [person CSV data](https://app.getvero.com/customers/csv/import) for each `customer`/`subscriber`/`user` along with **any event property**. Each column in your CSV can be imported as a custom user property in Vero, such as `first_name`. **Ensure that any properties you’ve imported via the API are the same as those you are backfilling via CSV.**

You can also import past data on events – i.e. data on what each customer/subscriber/user has done in your application or on your website. To do this, you can [import a new event CSV](https://app.getvero.com/logs/csv/import). An event CSV includes one line item for each event triggered by a customer, e.g. Purchased product, along with who triggered it (identified using the customer’s unique identifier) and when they did so (in the ISO 8601 datetime format). There is an example on the **Import** page. **Ensure you import data using event names that match the event names you are capturing via the API.**

We accept manual CSV imports (via the UI) up to 50,000 rows. To import larger datasets, please contact our support and we’ll import them directly, for speed.

###To Do:

1. Import any customers and their properties via CSV to backfill Vero and prime your segments. You can do this via the **[Import Customers](https://app.getvero.com/customers/csv/import)** page or by contacting support for larger data sets.
2. Import any customer **activity data** via CSV to backfill Vero and prime your segments. You can do this via the **[Import Events](import a new event CSV](https://app.getvero.com/logs/csv/import)** page.


<h2 id="6">Importing your first templates</h2>

We know how much effort is required to create and maintain awesome email designs. We've made it easy to upload your existing Vero templates and now with editable tags you change the content without having to edit the html.

Setting up templates correctly at the outset will enable you and your team to move quickly in Vero. The best place to start learning about how Vero handles templates is to read our extensive [Using HTML templates in Vero](/articles/using-html-templates-in-vero.html) help article. 

As a helpful summary, here are the key points to understand about Vero’s templates:

- You can find your templates under *[Settings > HTML Templates](https://app.getvero.com/templates)*.
- When your designer creates a template they should markup anchor tags, images, div and table cell blocks and headings with the HTML CSS class `vero-editable` to make them editable.
- Once a template is uploaded, you can then select this template when creating any type of campaign in Vero (Newsletters, Behavioral and Transactional campaigns).
- You can use Vero’s WYSIWYG point-and-click template editing interface to ememnd the content specificly for that campaign.

When you import templates, Vero will parse these and give you warning messages regarding errors you may have made that can cause conflicts, ensuring everything is set for your marketing team to use your templates seamlessly.

If you have questions setting up your templates or want help importing them from other email platforms, please get in touch with our support team – they all have experience coding and developing HTML email templates and can help you mark up your templates for Vero correctly and get going faster.

###To Do:

1. Export your custom templates from another email platform or as created by your design team.
2. Mark up any elements you want to be editable with the `vero-editable` CSS class, as outlined in our [help document on template management](/articles/using-html-templates-in-vero.html).
3. [Upload](https://app.getvero.com/templates/upload) your templates into Vero.



