
  
##Unbounce integration (the fast way)
    
##What is Unbounce?
 
There are two ways to install Vero with Unbounce. This guide uses Unbounce's webhook feature. It is the fastest and cleanest method. 
[The second method uses our Javascript API](http://www.getvero.com/knowledge-base#/questions/71147-Unbounce-integration-(using-Javascript---the-complex-way)). It is a little more complex and should be used only if you need to track users across Unbounce landing pages 
and other subdomains on your website.
 
The[Unbounce](http://try.unbounce.com/with-sendloop/)landing page platform has been designed with one thing in mind:**c
onversions**
.
 
 
From start to finish we're big fans of Unbounce at Vero. Designed to make it easy for marketers to quickly and easily create and deploy landing pages it is the perfect platform to capture leads.
 
     By integrating Vero with Unbounce, you can capture the email addresses and actions of leads that sign up via your Unbounce landing pages.
 
     Thanks to the Vero form builder and Unbounce's great UI, integration is straight forward. 
Below, you will find required steps to integrate your Unbounce landing page with Vero.
##Step 1: Create a form in your Vero account
 
     The first step is to create a new lead capture form within Vero. We'll then use the details of this form to let Unbounce know where to send your leads!
       Visit the 
[Vero form builder](https://www.getvero.com/tools/forms/new) and create a new form:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/903/Screen_Shot_2013-02-18_at_10.04.17_AM.png)
 
     You need to name the action for Vero to record when a customer fills out the Unbounce lead form. As Vero is 
**event-driven**
 this is an important step! Typical examples include 
Downloads eBook/Whitepaper/Checklist, Completes lead generation form XYZ, Expresses interest in demo, etc.
 
     Once done, click 'Generate Code'.
 
##Step 2: Add the Unbounce webhook
       In a new window, login to your Unbounce account and, after logging in, click on the landing page you are planning to integrate with Vero.
       On the landing page dashboard, scroll down and on the right side you will see a section called "Leads & Form Integrations". Click "WebHook: POST to URL":
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/904/ss5.png)
 
       After clicking, a pop-up will be displayed to you asking for "URl to Post".
 
 
In this field you want to paste the URL that you generated when using the Vero form builder:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/905/Screen_Shot_2013-02-18_at_10.08.24_AM.png)
 
 
**Important:**
 The URL provided to Unbounce must be a combination of the form URL with "/unbounce". For example, if the Vero form URL is "
[https://www.getvero.com/forms/abc123](https://www.getvero.com/forms/abc123;margin:%200px;%20color:%20rgb(26,%20102,%20144);%20cursor:%20pointer;)" then the URL you provide to Unbounce is "
[https://www.getvero.com/forms/abc123/unbounce](https://www.getvero.com/forms/abc123/unbounce)".
 
Simply paste this URL into the popup on Unbounce:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/906/ss6.png)
 
Once it’s entered, Unbounce will verify the URL and display you a success message:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/907/ss7.png)
 
Click 'Configure Field Mapping' to configure the parameters recorded in Vero.
###**Step 3: Configure your field mappings**
       In this step you can map the customer attributes from your Unbounce form (such as First Name, Last Name, etc.) against your customer profiles in Vero.
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/908/Screen_Shot_2013-02-18_at_10.12.58_AM.png)
 
       You 
**must**
 map the "Email Address" Unbounce Form Field to a customer WebHook Field called 'email', like so:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/910/Screen_Shot_2013-02-18_at_10.13.57_AM.png)
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/911/Screen_Shot_2013-02-18_at_10.14.04_AM.png)
 
       Other Unbounce Form Fields can be mapped as required. When mapping to Vero's WebHook form fields you need to use the 'Add new field' option and name the variable using the syntax user_variable_name. I.e. put "user_" out front. You should also add "_" in the places of spaces in variable names. Vero strips these out anyway!
 
       For example, you would map Unbounce Form Field 'First Name' to Webhook Field Name user_First_Name and so on. This allows you to store the data you collect from leads against their profiles in Vero:
 
 
![](https://s3.amazonaws.com/helpjuice_production/uploads/upload/image/742/912/Screen_Shot_2013-02-18_at_10.17.39_AM.png)
 
       Once you are happy, click 'Save settings' and you are off and away. 
 
       That's it! Your Unbounce leads will now be sent to Vero in realtime :).
 
 
**Ready to build a landing page and automate the follow up of new leads?**
 
[Start our 14 day 
**risk-free**
trial](https://www.getvero.com/) and try out our Unbounce integration! Why wait? 
 
       If you have any questions about this process please email us at 
[support@getvero.com](mailto:support@getvero.com), we'd love to talk!
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
