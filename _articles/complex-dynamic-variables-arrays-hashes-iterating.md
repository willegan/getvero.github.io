##Complex dynamic variables (arrays, hashes, iterating)
    
There are many cases where you will want to use complex data, such as an array of products, in your outgoing emails.
  Vero allows you to refer to based attributes stored against a user in emails as follows:
  {{user.first_name}}
  Likewise, if you track an attribute with an event, you can reference it with:
  {{event.product_name}}
  These examples are for basic key/value attributes. E.g. .
##Using an array
  If you were to track the following:
 
   _veroq.push(['track',{ products: [ {name: 'Item 123', price: 10},  {name: 'Item ABC', price: 20} ] }]);  You could refernce the array in your email using 
[Liquid templating](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers) as follows:
{% for product in event.products %} {{product.name}}: ${{product.price}} {% endfor %}
This allows you to do some very complex things and gives you a lot of power. 
	  Note that you can store arrays as both user and event-level attributes.
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
