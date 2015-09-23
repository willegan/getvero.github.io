
  
##Managing Unsubscribes
    
##Including an unsubscribe URL
   When editing a HTML email, you can quickly and easily include an unsubscribe URL by typing {{url.unsubscribe}} anywhere within your HTML template (whether it is basic HTML or a full HTML layout).
   This will be replaced with a link "Unsubscribe" that links to a dynamically generated URL that will automatically unsubscribe you from the email.  When a customer clicks the link they'll be unsubscribed instantly and taken to a page that confirms they have unsubscribed successfully. 
Getting a lower case 'unsubscribe' link
   As {{url.unsubscribe}} is replaced with an UPPERCASE 'Unsubscribe' link, it's good to know how to insert a lower case version as well.
 In the background, Vero replaces {{url.unsubscribe}} with the following:
<a href="{{url.unsubscribe_link}}">Unsubscribe</a>
 So, to get a lowercase (or different colour) link, you can do:
<a href="{{url.unsubscribe_link}}">unsubscribe</a>
Then you're all set to go. This also means you can customize the format of your unsubscribe links when building full HTML templates or insert the raw unsubscribe URL using {{url.unsubscribe_link}}.
##Customising the unsubscribe confirmation page
   You can customise the page customers see after a successful unsubscribe by choosing Account > Basics from the top right hand menu in Vero.
   Simply paste in the URL of the page you'd like us to display after the customer is unsubscribed and you're good to go!
##Unsubscribe webhook
   If you want your server to be notified when a user unsubscribes you can nominate a URL that we will POST to with the parameters '' and 'email=
[unsubscribed_user@domain.com](mailto:unsubscribed_user@domain.com)'. To do so, select Account > Basics from the top right hand menu in Vero.
   Simply paste in the desired URL for us to poll and we'll handle the rest.
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
