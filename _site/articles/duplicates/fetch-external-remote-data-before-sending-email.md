
  
##Fetch external (/remote) data before sending email
    
You can fetch remote data from your webserver before each and every email is sent out, regardless of whether it is part of an automated or newsletter campaign.
##Fetching a HTML snippet
This method allows you to pass data stored in Vero back to your server so that you can manipulate it and send back some custom HTML. The custom HTML that is returned is 
**inserted into the body of your email exactly where you place the {% fetch_html %} templating tag.**
****
Here is an example. In this example we pass back both a user-level attribute and an event-level attribute. This data can then be used by your server!
You should of course replace the domain in this example with whatever URL you prefer. This URL should return raw HTML that will be dumped into the body of your HTML campaign 
**exactly**
as it is returned.
{% fetch_html | 'http://www.domain.com?param={{user.id}}&param2={{event.number_of_widgets}}' %}
Here is how you might insert this code into the body of your email: 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3321/Screen_Shot_2014-01-28_at_12.55.22_pm.png)
This would then be replaced with the correct HTML upon sending.
##Fetching JSON data
In many instances, fetching a JSON hash is more useful. This 
**can**
 be more powerful as you can return a large, nested, complex JSON array for manipulation by marketing inside the Vero interface.
Take for example, the following JSON hash, returned from the endpoint 'http://www.domain.com/json.json':
{product_name: 'Test', product_price: 15.00}
If you were to include the following in the 'external attributes' field when creating an email campaign: 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3322/Screen_Shot_2014-01-28_at_12.58.23_pm.png)
...you could access the array in the 
**template or text above**
 using standard Liquid syntax. Here's an example:
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/3323/Screen_Shot_2014-01-28_at_1.01.25_pm.png)
As you can see your JSON array is referred to with the prefix 'external'. If you had a nested array, such as 
{products: 
  {product_1: 
    {product_name: 'Test', product_price: 15.00}
  }
}
You can access the nested array data like this:
{{external.products.product_1}}
The Liquid syntax guide has all the details on working with arrays: 
[https://github.com/Shopify/liquid/wiki/Liquid-for-...](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
##Things to note
*When previewing campaigns, we will use an example customer that has triggered the base event of your automated campaign and the related dummy data so you can see the 
**full output**
, as a customer would see it.
	
*All URL calls are cached where possible. I.e. if you call a direct URL without parameters, we'll cache this call when sending emails to ensure your service is not inundated. If you have individual parameters then you should anticipate the volume you will receive.
	
*If there is anything 
**other**
 than 
**200**
 response from the API endpoint called, the email will fail and you will be notified in the Vero UI.
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
