#Better information means better support
 
  
[Vero Updates](https://www.getvero.com/resources/category/vero-updates/)
        Written On
    
22 September, 2015 
    by 
    
Reba Moyes
        
23Shares
        		
*[Twitter](http://www.twitter.com/intent/tweet?url=https%3A%2F%2Fwww.getvero.com%2Fresources%2Fbetter-information-means-better-support%2F&text=Better+information+means+better+support)

																			
*[Facebook](http://www.facebook.com/sharer/sharer.php?u=https://www.getvero.com/resources/better-information-means-better-support/&t=Better+information+means+better+support)

																			
*[LinkedIn](https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fwww.getvero.com%2Fresources%2Fbetter-information-means-better-support%2F&title=Better+information+means+better+support&source=Vero)We’ve recently been playing with a few new ideas here at Vero to offer our customers better support.

At Vero we use 
[HelpScout](http://helpscout.com) to manage our support inbox, primarily because we love the look-and-feel of the email responses they send out. We’ve used it for nearly three years now and still find it to be well suited to our needs.

At any given time there are at least two people working on support in a dedicated capacity and typically is another engineer focused helping work through any nuanced issues that come up.


One challenge we’ve had as we work with more customers is ensuring 
**context**
 is carried from one conversation to the next.

Take a customer on a free trial. At any given moment, they’ll typically be receiving automated emails from Vero. These emails will be guided by their activity: have they installed Vero’s API? Have they created a campaign? Have they invited team members?

We want to set the benchmark at Vero for great customer experience. To do so, when a free trial customer writes into support, we want to know where they’re at in this lifecycle.

There are options out there that would let us combine our support and email automation into one tool, but we feel these would mean we miss out on a lot of functionality we use regularly, both when it comes to crafting great emails (in Vero) and also when it comes to support (in HelpScout)

To make everything fit together we’ve been playing with two little extensions we’ve built for Vero and HelpScout.

##Data at our fingertips


The first is a custom HelpScout sidebar application we’ve crafted. Here’s a real example (with the name and email of the customer obscured):

![](https://www.getvero.com/wp-content/uploads/2015/09/1-x8_cIje-VCfYB9_sGno8IA.png)

This little sidebar tells us a lot. It tells us whether the customer is paying,  when they last interacted with Vero, how engaged they are (that’s our homegrown 
Customer Happiness Indexâââabove 60 is good), how much they’re paying, when they paid, email campaign activity and so on.

In essence, whenever we view a ticket, we look up the user who has emailed in and pull these details from their user profile in Vero (and some data from our own database).

It’s a work in progress, but it’s been super useful so far.

##Workflow management


The second thing we’ve crafted is a little tool that has the ability to 
tag a conversation in HelpScout as the conversation is created or updated. The benefit of this is that we can use HelpScout’s 
[Workflows](http://docs.helpscout.net/article/22-using-workflows) to redirect the message.

Here’s how this looks:

![](https://www.getvero.com/wp-content/uploads/2015/09/1-SRTN4UDDbKG2jKIk2wOWtA.png)

This is all automated: the ticket comes in, our system looks up the user and, if they’re on a trial, it adds the tag.

We add a bunch of different tags, driven by different rules. The 
Trial tag is a good example as it allows us to keep tabs on trial tickets and route them to a specific folder. If any tickets are in that folder, the team knows to crush them quickly.


There are two other benefits:

*When seeing this tag, we have a good idea what to expect, as most free trial tickets relate to similar questions.


*We can pattern-match over time and improve our documentation targeting users in this stage of their lifecycle with Vero.

##More genuine support


We’re tweaking these tools as we go, but they provide an interesting glimpse into how we’re trying to be more efficient with our support, whilst providing great customer experiences. Particularly challenging with the complexity of a product like Vero, a product that has a lot of moving parts.

These tools give us a better view of the customer, allowing us to create a more genuine and individual customer experience, which is what we’re all about here at Vero.

<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
			xmlns:dc="http://purl.org/dc/elements/1.1/"
			xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/">
		<rdf:Description rdf:about="https://www.getvero.com/resources/better-information-means-better-support/"
    dc:identifier="https://www.getvero.com/resources/better-information-means-better-support/"
    dc:title="Better information means better support"
    trackback:ping="https://www.getvero.com/resources/better-information-means-better-support/trackback/" />
</rdf:RDF>    
Written by
      
![](https://secure.gravatar.com/avatar/a3fea6c770e3fd18a2d346228ea92ce5?s=96&d=https%3A%2F%2Fsecure.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D96&r=G)
      
Reba Moyes
        
Reba looks after Customer Success at Vero. As she regularly puts it, her personal goal is to ensure customers have "the best time".
        
##We dissect email for a living.

      
More than 10,000 marketers, developers and product managers enjoy our newsletter every week.