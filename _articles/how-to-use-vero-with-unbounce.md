---
layout: articles
categories: "getting-started 'common issues'"
---
  
##Unbounce integration (using Javascript - the complex way)
    
##Why use Javascript and Unbounce?
 
This method of installation uses our Javascript API to track Unbounce leads. This is for advanced setups and you should have some basic Javascript knowledge before attempting this approach. 
[Check out this approach first](http://www.getvero.com/knowledge-base#/questions/50537-Unbounce-integration-(the-fast-way)) (it's easier). If you want to track customers across your Unbounce pages 
and other subdomains on your website then you should use the Javascript approach outlined below.
     Vero's Javascript library drops a cookie to track your customers. If you have received their permission to market to them on an Unbounce landing page, using our Javascript integration will drop a cookie that allows you to track them across other subdomains. This is useful in many situstions, such as:
 
- eCommerce stores using Unbounce to capture leads for particular products. Tracking customer checkout on the primary domain requires Javascript integration.
- B2B SaaS businesses using Unbounce pages as inbound lead capture forms, wanting to trigger campaigns across Unbounce pages, the blog and inside the software.
- Customers using a mixture of Unbounce and other survey or capture software.

##Step 1: Install the Javascript library
   Goto the "
[Install our Javascript](http://www.getvero.com/docs/install-our-javascript-snippet)" step of the Vero documentation. Copy the first snippet from this page (the Vero library):
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2617/Screen_Shot_2013-11-20_at_10.02.44_am.png)
   Go back to the Unbounce editor and select `Javascripts` at the bottom of the screen.
 
   Paste the code you copied into the editor and name the snippet "Vero Library". Choose 'head' in the placement drop down:
 
 
![{{site.data.screenshots.unbounce.script['title']}}]({{site.data.screenshots.unbounce.script.image}})
 
##Step 2: Track conversions on the Unbounce form
   In this step we'll install the code to actually track when a customer converts on your Unbounce landing page.
 
   In the Unbounce editor, select the Form Confirmation Dialog editor:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/2619/Screen_Shot_2013-11-20_at_10.08.49_am.png)
 
   Then, add a new Javascript and call it "Vero Conversion".
 
> Firstly, copy and re-paste the initial Javascript from step 1 above (the main Vero library).
 
 Then, copy and paste the following code after it:
 
    <script type="text/javascript">
      var _veroq = _veroq || [];
      var getUrlParams = function () {
        var params = {},
        hash;
        var hashes = decodeURI(window.location.href).replace(/\+/g," ").slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
          hash = hashes[i].split('=');
    </script>
