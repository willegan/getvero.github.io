---
layout: articles
title:  Basic A/B variation test
categories: campaigns
common_issues: true
---
  
# Basic A/B variation test
    
One of the core benefits of Vero is being able to quickly and easily test and refine hypotheses. 

You can A/B test:

-Subject lines<br>
-From addresses<br>
-Body content<br>
-Templates<br>

You are also able to select the split rate for each variation.

Configuring your first A/B test is a simple process. The following steps should guide you through each step.

## 1. Adding a variation

After you create a new campaign, you can create a new A/B Test by click the **New A/B Test** button.
You will be redirected to the following page where you can add new variations.

![{{ site.data.screenshots.vero.ab_test.overview['title'] }}]({{ site.data.screenshots.vero.ab_test.overview['image'] }})

*You can either add **Variation** or **Negative Variation**. A negative variation is a hold-out control group. The people that "receive this campaign" will actually not be sent to. Add variation is straightforward, you can add multiple variations if you’d like.*

## 2. Editing a variation

Each variation can have a separate from, subject, content and HTML template. You are free to mix and match these as you wish. Our advice is, generally, to test a single hypothesis with each variation. You can switch between variations using the following tabs:

## 3. Variation rules

Variations are sent out based on split percentage. By default, Vero sets an equal split between all the variations but you can simply change it before launching your test.

![{{ site.data.screenshots.vero.ab_test.variations['title'] }}]({{ site.data.screenshots.vero.ab_test.variations['image'] }})

*At this point in time you should ensure you have a conversion event configured so you can meaningfully track which variation is the most successful. You should then remove other variations from the sending cycle.
This allows you to rapidly test new ideas and determine a winner.*

*You need to click on **Start the A/B Test** to make it live. Until this is done, only the Control will be sent.*

## 4. Reporting on a variation

Results are reported individually for each variation. You to see the effectiveness of a variation in terms of its open, click and conversion rates. You can also determine any negativity surrounding a variation by monitoring unsubscribes attributed to it specifically.

<br>

-----

##Notes:##

*When running an A/B test on a Behavioral or Transactional email campaign that has more than one email (a series campaign), A/B tests run across the entire series. The split is decided with the first email in the series and the remaining emails follow suit.*
<br><br>

*For example, if a customer receives Variation B for the first email, they will receive Variation B throughout. This allows you to test entirely different templates or from addresses without your customers getting conflicting and inconsistent messages.*


That's it! Those are the four basic steps to getting up and running with A/B testing.