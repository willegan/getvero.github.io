---
layout: articles
title:  "Testing emails in Vero"
categories: "getting-started 'email design'"
---

# Testing emails in Vero

Every Vero account comes setup with two *Projects*. The first project, named when you enter your Company's name at signup is in *Live mode*. The second project, named "Test" is set in *Test mode*.

*Projects* are entirely separate Vero instances, with their own user databases, their own API keys, their own access rights and their own template libraries.

We recommend you use the test project with the development or staging version of your web or mobile application. To do so, simply set Vero up as normal but ensure you use the API key from your "Test" project.

## Sending modes

![{{site.data.screenshots.settings.project.title}}]({{site.data.screenshots.settings.project.image}})

Each project can be setup in three different modes:

1. Live. In this mode, emails are sent out to the user's that trigger them.
2. Test. In this mode, emails are sent to a specified email address when triggered by an end-user. In this way, you can see an exact copy of the email each customer has triggered. This is good for testing initially or with small data sets.
3. Offlince. In this mode, emails are not sent out, but are still evaluated as events come in. This is the safest mode to use when installing Vero.

You can copy campaigns and templates between Vero projects. If you copy a campaign, Vero will look for or copy all of the templates and segments that campaign relies on. This ensures you have 

## Recommended approach

Customers typically test new campaign ideas in their "Test" project. They'll usually keep this project in *Offline* or *Test* mode. Once happy, they'll copy this new campaign idea to their live project.

This enables you to safely test all of the related tracking and event history that a campaign needs to be sent correctly.

Once a campaign is live, you can pause behavioral and transactional campaigns whilst making changes to a campaign. When unpausing, Vero will ask you if you'd like to queue all of the emails that were skipped whilst the email campaign was paused.
