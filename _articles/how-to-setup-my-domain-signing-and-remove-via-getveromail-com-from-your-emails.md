#How to setup my domain signing and remove 'via getveromail.com' from your emails

By default, Vero will send your emails using our own IP addresses and domain configuration.

For many customers, this is totally fine, but you may want to send emails from your own domain instead.

The key benefits of this are: better deliverability, links and images are masked with your own domain and Vero is truly invisible to your customers.

###How your emails look by default

When you first sign up to Vero, your emails will look something like this:

![via-getvero](https://www.getvero.com/wp-content/uploads/2014/08/via-getvero.png)

Email clients will show this because the domain you send from (`test@chrishexton.com` in the example above) does not match the sending domain, getvero.com.

###Multiple from domains

You might see 'via getveromail.com' or another domain as we use multiple domains to ensure maximum deliverability for all our customers.

By setting up your Vero DNS records your recipients will no longer see the 'via' message.

###Request your DNS records by adding your Domain

To find the DNS records you need to confirm your domain at `Account > Configuration > Email delivery`.

![Screen Shot 2015-02-26 at 6.26.23 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-26-at-6.26.23-PM.png)

You will then need to set these DNS records up on your domain.Â To do this, you'll need to look at the how-to for your specific web host. Googling [Setup DNS records](https://www.google.com.au/search?q=how+to+configure+dns+records&oq=how+to+configure+dns+records) is the fastest way to find your providers instructions.

###Custom CNAME

By default we provide a CNAME record for email.yourdomain.com. This CNAME is used to track links. If you already have a CNAME setup on this subdomain, please email support@getvero.com and we can adjust the subdomain to something that works for you.

###Verify your records

Once you have added the DNS records to your domain, return to your Vero Account. You will see the 
Verify DNS Records button.

![Screen Shot 2015-02-26 at 6.16.05 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-26-at-6.16.05-PM.png)

When you click this button Vero will check to confirm that the DNS records are set up correctly and, if so, it will start sending your emails with this configuration going forward.

![Screen Shot 2015-03-05 at 2.14.40 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-03-05-at-2.14.40-PM.png)

From now on you will no longer see the 'via' message in your outgoing emails!

 