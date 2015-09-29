---
layout: articles
title:  "Using arrays in your emails"
categories: "data"
---

#Using arrays in your email
    
Vero allows you to refer to properties stored against a user using the Liquid templating language, these are commonly referred to as merge tags:
{{user.first_name}}

Likewise, if you track a property with an event, you can reference it with:
{{event.product_name}}

However there are many cases where you will want to use complex data, such as an array of products, in your outgoing emails.

##Passing the array 
If you were to track the following:

<script>
_veroq.push(['track',{ products: [ {name: 'Item 123', price: 10},  {name: 'Item ABC', price: 20} ] }]);  
</script>
 
You could refernce the array in your email using [Liquid templating](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers) as follows:

{% for product in event.products %} {{product.name}}: ${{product.price}} {% endfor %}
 
*Note*: that you can store arrays as both user and event-level properties.
         
        
                
                
