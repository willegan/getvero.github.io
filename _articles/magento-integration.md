
  
##Magento integration
    
##What is Magento?
Magento makes it easy for business owners to setup an online eCommerce store.
By integrating Vero with Magento you can capture the email addresses and actions of customers that login, signup and checkout on your store. We'll also cookie these customers so you can track their actions, including pageviews.
Setup is relatively quick. The following steps outline an approach that will allow you to use Vero with your custom template. It's all copy paste!
##Step 1. Setup the main Vero library
The first step is to ensure you have included the main Vero Javascript library. To do this we're going to insert a custom block in the  of our HTML page. To do this, find the package you are using, e.g. 
**/app/design/frontend/your-package**
.
From there, you will need to edit the XML file controlling your layout. This is typically within your 
**themename/layout**
 and is called '
**local.xml**
'. Editing 
**themename/layout/local.xml**
you should add the following block:
<layout version="0.1.0">
   <default>
        <reference name="head">
          <block type="core/template" name="vero" template="vero/head.phtml" />
        </reference>
   </default></layout>
You then want to create a folder within you themename/template folder called 'vero' and create a folder within that called 'head.phtml'. Edit your new file (
**themename/template/vero/head.phtml**
) and include the following code.
**Note:**
Don't forget to update your API Key, which you can find in the 
[Account section](https://www.getvero.com/account/api_keys) of your Vero account.
<script type="text/javascript">
  var _veroq = _veroq || [];
  _veroq.push(['init', { api_key: 'YOUR_API_KEY' } ]);
  _veroq.push(['trackPageview']);
