#Create a HTML email subscribe form

The best way to get data into Vero is using our API. Our API tracks C
ontacts and the 
Events they trigger.

If you are coming from an email service provider such as Mailchimp, you will be familiar with the concept of HTML-based email forms.

These forms allow you to collect a subscriber's email address, name and other (custom) details easily using a little HTML on your website.

Vero also supports email forms, with one key difference. Traditionally, when a contact fills out an email form they are added to a list. In Vero, rather than being added to a list, a contact that fills out a web form triggers an action. That action could be as simple as Subscribes to blog.

You can then use this action to create a segment or automate a behavioral email: so you get twice the power from a single web form!

##Step 1. Create a form

To generate a form, head to `Settings > Create a Subscribe Form` and you'll be shown Vero's point-and-click interface to create a form:

[![](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-18-at-4.12.05-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-18-at-4.12.05-PM.png)

Vero forms always collect the contact's `email` but you can collect any fields you want. We will show you fields you've collected in the past on the left hand side.

You must define the action that will be triggered when the contact fills out this particular form.

The final part of our form builder allows you to define what your contacts see after completing the form:

[![Screen Shot 2015-02-18 at 4.03.08 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-18-at-4.03.08-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-18-at-4.03.08-PM.png)

##Step 2: Copy and paste your new form

Select 'Generate form' to generate the HTML for your new form:

[![subscribe form code](https://www.getvero.com/wp-content/uploads/2015/02/subscribe-form-code.png)](http://www.getvero.com/wp-content/uploads/2015/02/subscribe-form-code.png)Select 'copy to clipboard' and paste this code in your CMS or website and you are good to go!

By default, we'll show them a confirmation screen that looks like this:

[![Screen Shot 2015-03-05 at 4.22.10 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-03-05-at-4.22.10-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-03-05-at-4.22.10-PM.png)

You can define a screen if they fail to complete the form successfully (i.e. enter an invalid email) or when they do complete the form successfully. Generally this would be a custom "Thanks for subscribing" page.