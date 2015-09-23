#The Future of Personalization: Use Real Data to Personalize Emails
 
  
[How to](https://www.getvero.com/resources/category/how-to/)
        Written On
    
27 July, 2015 
    by 
    
Chris Hexton
        
71Shares
        		
*[Twitter](http://www.twitter.com/intent/tweet?url=https%3A%2F%2Fwww.getvero.com%2Fresources%2Ffuture-of-email-personalization%2F&text=The+Future+of+Personalization%3A+Use+Real+Data+to+Personalize+Emails)

																			
*[Facebook](http://www.facebook.com/sharer/sharer.php?u=https://www.getvero.com/resources/future-of-email-personalization/&t=The+Future+of+Personalization%3A+Use+Real+Data+to+Personalize+Emails)

																			
*[LinkedIn](https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fwww.getvero.com%2Fresources%2Ffuture-of-email-personalization%2F&title=The+Future+of+Personalization%3A+Use+Real+Data+to+Personalize+Emails&source=Vero)Email is one of the most successful marketing channels. That means it is getting 
**noisier**
. You 
**need**
 to be thinking about personalized emails if you’re going to be competitive. If you want to win the inbox, you need to get involved.

At this point in history, you know more about your customers than ever before. With the right framework, you can put this data to good use.

The trick to getting the most out of your data is let go of having everything come from a single neat source and get into the idea of capturing 
**everything**
 you can about 
**every**
 user, 
**all**
 the time.

That is what this post is about.

The following email is a favorite of mine when it comes to great examples of personalization. It’s from 
[Airbnb](https://www.dropbox.com/s/obmnsxa9ie2hpr8/Screenshot%202015-07-27%2008.53.47.png?dl=0).

Click the image to see the full email.

[![Airbnb email](https://www.getvero.com/wp-content/uploads/2015/07/airbnb-two.png)](https://www.getvero.com/wp-content/uploads/2015/05/airbnb-email1.jpg)

There are three things that were required to send an email this good:

*Airbnb needed to 
**know who was on their site**
 and what they last looked at (the 
Urban Treehouse in Portland, OR, as per the screenshot).


*They needed to have a way to 
**dynamically insert**
 this data into an email.


*They needed a way to send that email, and 
**track its results**
.

Airbnb is a big company with a lot of very smart people working on this problem (shout out!).

This week’s post is the first in a semi-regular series of posts that we’re calling 
**Highlight**
.

These posts are a no-bullsh*t look at my thoughts (as CEO and Co-Founder of Vero) on how you can create better customer experiences with email.

This first post is about creating emails like Airbnb’s example above, and the thought process that has gone into capturing customer data with a tool like Vero – a tool that helps you send emails that make use of all the data you have on your customers.

##Data is mutable


Any email platform that says 
“you can create amazing emails like Airbnb, without ever talking to IT” is making it up.

**BUT**
 that doesn’t mean you should give up! The first step to doing anything well is confronting the facts.

After three years and working with some phenomenal companies, here’s how the 
**BEST**
 companies look at creating great emails:

IT is a core competency of any modern company, yet in order to harness the power of email, a platform needs to be setup to help 
**capture and normalize customer data**
 so that IT and marketing can create and test campaigns and customer experiences 
**faster**
.

That is to say, you need to find a way to store your customer data so that you can move faster than the competition.

At Vero, we use Vero as this customer data layer, and here is what we do (it works well):

*We use traditional HTML forms, generated in Vero, to capture emails around our blog. These forms add users to our Vero database, and capture data about where they came from. This is the most basic place to get started.


*We also use Vero’s Javascript library via Google Tag Manager on our www.getvero.com website to track interactions with all of our public landing pages and content (such as tracking you’re reading this post right now).


*We use Vero’s Ruby library to track activity inside Vero’s core Ruby on Rails application, tying activity to profiles already in Vero. We have a full history for some users, from the time they first read a blog post, to the time they sent their first email in Vero.


*We run a nightly script that pushes in 
**extra**
, calculated user fields from our central data store, such as the number of emails a user has sent in the last billing period. We do this using raw API calls to Vero.

Vero matches all of this data up, normalizes that data and stores it per user. As a marketer, know what I can get my hands by looking inside Vero’s UI and seeing this data stream in.

In doing this, Vero becomes a center of truth that knows 
**more than any other database**
 about our customers.

It knows when someone signed up to the blog. It knows which form on the blog they came from.

It knows when they visited the home page, and how many times. It knows which pricing plan they clicked to sign up for a free trial. It knows when they sent their first email. It knows if they pay or not. It knows if they’re an administrator or a normal Vero user. It knows if they sent 1,000 or 10,000,000 emails this month.

I don’t have play with the data capture sources every day and Vero’s ability to anchor data to an individual user makes it a fantastic 
**data layer**
 for our customers’ information.

Every smart company I’ve talked to has a similar data layer. It might be their own huge data warehouse, it might be a SaaS tool like Vero. It might be a combination of both.

Vero gives you a lot out of the box to help data like this and, once it’s flowing, you can pump in as much as you want, from multiple sources, and let Vero do the heavy lifting of matching it all up.

As my friend 
[Will Egan](https://twitter.com/willegan) says:

>The trick to getting the most out of your data is let go of having everything come from a single neat source and get into the idea of capturing 
**everything**
 you can about 
**every**
 user, 
**all**
 the time.


I think Will is right, and that is what this post is about.

##Using this data is where most fail


At this point, you’re hopefully seeing that the trick we’re using above is to think about capturing data under a specific paradigm.

There are two key things I think about when capturing data:

***Who is the user receiving this email?**
 What is their name, what type of business are they, how old are they, what timezone are they on?


***How did they interact with X?**
 X could be a product. X could be a listing on Airbnb. X could be a file on Dropbox. In our case, X is often a feature or a piece of content.

For 99% of the businesses on the Internet, these two concepts will be the same: you need to be thinking about who your users are and how they interact with your product, store or application.

This second point is generally the most interesting, particularly if you want to craft personalized emails.

For a decade, email marketing tools have given you a leg up by letting you insert merge tags for things like customers’ first names and unsubscribe links.

Here is an example of a basic merge tag from Mailchimp: 
*|FNAME|*

At the time of sending, this merge tag will be replaced with the recipient’s first name. This was and remains a super neat concept, as it lets you personalize each email going out.

Another example is 
*|UNSUBSCRIBE|*, which inserts a custom unsubscribe link per recipient.

The focus of this post is to show you some of the more interesting merge tags you can use in modern email marketing, and how some customers use merge tags in Vero.

##Using your data to personalize


As I mention above, there are two key things to think about when crafting your emails: the 
user and the actions, or 
events, that took place in relation to various objects (your products, your application, etc.)

At Vero we’ve elected to use a templating language called 
[Liquid](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers). Liquid was developed by the awesome team at 
[Shopify](http://shopify.com). It is the templating engine that runs every Shopify webpage.

#Create better customer experiences


Send super targeted messages with Vero.

[Start a free trial](https://app.getvero.com/signup)

![](/wp-content/themes/vero/assets/images/blog-cta@2x.png)

It is neat because, as 
[the article above shows](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers), you can do 
**lots of fancy things**
 with your templating using Liquid.

If you were Airbnb, you could iterate through listings the customer viewed, like this:

{% for listing in listings %}
  {{listing.name}} costs ${{listing.price}} per night. 
  Go back and <a href="{{listing.url}}">Check it out</a>.
{% endfor %}

This in itself is pretty amazing, as Liquid helps you unlock and insert more 
**complex, personalized data**
 into your emails just like you used to insert a first name. That means you can insert the data wherever you want in your template, with complete control over how it looks.

It also means every single email that is sent out will be completely customized for the person receiving it.

In Vero we’ve mapped the merge tags you have available to these two key concepts of a 
user and an 
event.

With a 
user, you can insert 
**anything**
 you have captured about that user. You can even 
manipulate that data on the fly, without calling in an engineer (an example of where there is a nice hand off between IT and the marketing team).

Some example for clarity. Here’s a few things I’ve personally used time and again at Vero when creating our own emails:

{{user.first_name}} – a simple one, inserting a user’s first name.

{{user.emails_last_period}} – “Hey John, you sent 25,000 emails last month” has never been easier.

{{user.signed_up | date: '%d %m, %Y'}} – “Hey Jenny, you signed up seven days ago on 2 July, 2015″. This is an example of manipulating my data on the fly.

That’s cool in itself, but fairly reminiscent of what you’ve always been able to do with Mailchimp and other tools.

Where the real power begins is the ability to insert 
**any of the data I’ve captured about what a user does**
 into my emails.

For a specific example, if I were Airbnb and I was tracking an 
event called 
Viewed listing using Vero’s Javascript widget, I would also be able to track 
**event properties**
 and send through everything I know about that listing. I could tell Vero the listing’s 
name, the nightly 
price, the 
city the listing is in and so on.

I would then have the power to re-create the email I shared at the top. I would craft an automated email campaign that has the following rules:

When a user 
**Views a listing**
, send them an email 20 hours later if they have not made a booking.

I could then create the body of the email and insert all of the details I captured with that 
**Viewed listing**
 event. I could do something like:

>Hey 
{{user.first_name}},

{{event.name}}, just 
${{event.price}} per night.

Take another look at 
{{event.name}} to see if it’s a good fit for your upcoming trip to 
{{event.city}}!

If you have questions, please check out our Help Center.

The Airbnb Team


We use this approach at Vero and it helps me create emails as powerful as any other company, without a team of 20 people to help me execute.

With a little investment in my data strategy, I get huge leverage.

##You couldn’t do this before


Every day at Vero our team puts a lot of thought into how we can make our toolkit 
even easier to use. We work with companies that want this kind of personalization and we’ve built a great API and approach to storing and caching this data that means you don’t have to do all of the heavy lifting.

If you can get your head around the concept of 
users and the 
events they trigger, then you have a instantly get 
**a whole new set of data at your fingertips**
.

I’ve spoken with a large number of sophisticated companies that send emails similar to the Airbnb example above. Prior to discovering a tool like 
[Vero](https://www.getvero.com), many of these businesses actually built fancy CMS systems that would do things like:

*Nightly, or on demand, query a database, pulling out the 
price, 
name, and 
city of the last listing a user viewed.


*Store these data values as individual columns and dump the data into a CSV so as to push it into a new list in Mailchimp or a more traditional email marketing tool.


*The marketing team could then access Mailchimp and create a one-off email to this new, temporary, list at a set time.


*After this send, the list was useless so it would be discarded.

This approach certainly works, however it doesn’t have the continuity that building emails around a CRM has.

There are at least three things that come to mind as frustrating with this process:

*You end up with lots of lists with different data, rather than one view of a user.


*Typically internal datastores can’t easily capture what happens on site. They also often can’t re-identify a returned user via a cookie. One neat thing about Vero is that when a user receives an email and clicks-through, Vero’s library automatically appends more on-site 
event activity to their central profile, even if they have cleared cookies or are on a secondary device.


*You can’t trigger the email relative to the actual time the user took the action. You typically settle for sending a batch to users that have 
Viewed a listing in the last day / two days days, as opposed to sending an email exactly two days after 
this user received the email.

On top of which, you had to build your own CMS / cron job set to manage the process, which is usually a much larger investment, particularly over time, than people realize.

##Pitfalls to keep an eye on


Tracking data into a tool like Vero with the 
user and 
event paradigm works very well, though it’s important in this Spotlight post to highlight two key things to watch out for:

###Get the data flowing initially


Tracking data in this way can be done by almost anyone at a simple level but, to truly get value and send emails like an Airbnb, 
[Amazon](https://www.getvero.com/resources/guides/the-amazon-experience/) or 
[TripAdvisor](https://www.getvero.com/resources/guides/tripadvisors-unfair-advantage/), you need your engineering, product and marketing teams to work together to push data into Vero 
**as soon as you can**
.

In my opinion this is vital if you want to build a really engaging customer experience, so it doesn’t come as a surprise to most.

Fortunately, we’ve kept our API simple at Vero to help make this process easier. There are only two end points: tracking a 
user and tracking an 
event. I’ve seen customers with over 10 million users get setup in a few hours.

**A good rule of thumb:**
 track every customer action with every important feature/product on your site.

###What if my data changes?


Your data will certainly change, and that’s perfectly okay. Over three years of helping companies do this sort of tracking, the tendency is to 
**track more over time**
. There are times when you’ll want to go back and fill in missing events, and this can be done via API or CSV, but typically it doesn’t present a large problem as event-based data is most highly leveraged in 
**triggered**
 emails, and new triggered emails typically get sent from 
**today onwards**
, rarely meaning there is a requirement to backfill every single event for every user.

It is coming to terms with this last point that seems to be the biggest challenge, but the ultimate outcome is a platform with data that you can use to segment and automate in real time, along with having the ability to personalise each individual email that goes out.

##Viva la data


This is something that the majority of companies have never had access to before, and it’s an exciting time for online businesses, as tools give them the support to really tailor their customer experiences.

Please ask me questions in the comments if you have them. I spend a lot of time thinking about these challenges and many of our readers have a lot of experience in this field.

Over and out.

<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
			xmlns:dc="http://purl.org/dc/elements/1.1/"
			xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/">
		<rdf:Description rdf:about="https://www.getvero.com/resources/future-of-email-personalization/"
    dc:identifier="https://www.getvero.com/resources/future-of-email-personalization/"
    dc:title="The Future of Personalization: Use Real Data to Personalize Emails"
    trackback:ping="https://www.getvero.com/resources/future-of-email-personalization/trackback/" />
</rdf:RDF>    
Written by
      
![](https://secure.gravatar.com/avatar/08b57e29f0a32ffd162fa4cd78a14c49?s=96&d=https%3A%2F%2Fsecure.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D96&r=G)
      
Chris Hexton
        
Chris is the CEO and co-founder of Vero. He thrives on helping customers do better and loves solving problems for Vero's customers.
        
##We dissect email for a living.

      
More than 10,000 marketers, developers and product managers enjoy our newsletter every week.

*fabmol
        
Hey Chris, great article. The level of personalisation with automated mails is amazing.


#comment-##
    
*NiftyImages
        
Chris.

Great article.  Our company helps businesses personalize emails and we’ve found similar results expressed in this blog post. While personalizing email can be as trivial as “Dear David Baker”, you can also take it to the next level by personalizing an image like this:

[https://www.niftyimages.com/ex/h/pdr/fdr?name=Chris+Hexton](https://www.niftyimages.com/ex/h/pdr/fdr?name=Chris+Hexton)

or something like

[https://www.niftyimages.com/ex/h/4dr/cdr?name=Chris](https://www.niftyimages.com/ex/h/4dr/cdr?name=Chris)

Hopefully this comment does come off as too “spammy”. Just thought I would introduce another level of personalizing emails. We work with any Email Service Provider or landing page.

Kevin


#comment-##
    
*http://time-wellspent.com                
Jaina
        
“IT is a core competency of any modern company,” – SO true. Having a solid IT team in place is absolutely vital in marketing these days.


#comment-##
    
*http://inspirebeats.com                
Wilson Peng
        
Awesome article man. Personalized means everything. No point in sending the same email to everyone and hope for a response.


#comment-##