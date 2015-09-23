
  
##What are events and why do they matter?
    
Everything in Vero is event driven. This means your customers actions are the power behind every email you send.
To learn more about this at a high level, check out our Getting Started documentation.
A common question you might be wondering is 
how you can get events to appear in the triggered campaign drop down list, i.e. here:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/1161/Screen_Shot_2013-05-04_at_2.11.55_PM.png)
There are two ways to create an event:
###1. Via the API
Any time you track a new event via the API it will automatically appear in the dropdown list and can be used across all of the filters.
###2. Using the 'Create Event' option
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/1160/Screen_Shot_2013-05-04_at_2.13.24_PM.png)
You can create an event manually when building a triggered campaign using the  "When a user" drop down menu. Once created this event will be available across all filters. You can also visit the 
[Connect page](http://www.getvero.com/events) and grab the Javascript snippet you need to copy and paste in order to start tracking your events!
****
##Using dynamic variables with events
When tracking events you can also track custom attributes, or meta-data. An example might be tracking the name, category and image URL of a product a customer views. You can then use these attributes in emails triggered by this event.
Here's an example of the Javascript you might use to track this information:
<script>
_veroq.push(['track', 'viewed product', {name: 'Chocolate Bar', category: 'confectionary', price: 10.50, url: 'http://domain.com/chocolate-bar'}]);
</script>
If you then triggered an email on the 'Viewed product' event, a bit like this:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/1420/Screen_Shot_2013-06-21_at_10.56.08_AM.png)
...then you could use those attributes when crafting the body of your email as follows:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/1421/Screen_Shot_2013-06-21_at_10.57.33_AM.png)
This allows you to send powerful dynamic and even transactional emails, so give it a try!
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
