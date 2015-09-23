
  
##Shopify integration
    
##What is Shopify?
        Shopify makes it easy for business owners to setup an online eCommerce store.
 
       We're big fans of Shopify at Vero. By integrating Vero with Shopify, you can capture the email addresses and actions of customers that login, signup and checkout with your store. We'll cookie these customers so you can track their actions, including pageviews.
 
       Setup is quick, following these four steps. It's all copy paste!
 
##Step 1. Setup the main Vero library
 
       The first step is to goto the Template Editor and edit the file 'theme.liquid'. This is your main theme file. We want to add this first snippet of Javascript just before the  tag on this page.
 
 
**Note:**
Don't forget to update your API Key, which you can find in the 
[Account section](https://www.getvero.com/account/api_keys) of your Vero account.
 
<script type="text/javascript">
  var _veroq = _veroq || [];
  _veroq.push(['init', { api_key: 'YOUR_API_KEY' } ]);
  _veroq.push(['trackPageview']);
