*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*How to track pageviews with Vero’s API
    
#How to track pageviews with Vero’s APIThis only applies to customers using Vero's own Javascript API Library or Segment.com's Analytics.js Javascript library.

By default, Vero’s Javascript wrapper 
**does not**
 track page views. Tracking pageviews can quickly become overwhelming, as most customers find they get better value when defining custom events in Vero.

It’s easy to turn pageview tracking on, allowing you to use pageviews when defining your segments.

Simply add the following line to the Vero Javascript library just before the `</head>` tag in your HTML template:

<script>
    _veroq.push(['trackPageview']);
</script>

Once installed correctly you will start seeing 
Viewed page in the Logs section of your Vero dashboard. Each pageview captures the URL of the page visited and you can use this to segment your contacts.

[![Screen Shot 2015-03-05 at 4.13.59 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-03-05-at-4.13.59-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-03-05-at-4.13.59-PM.png)

This should go 
**below**
 the main Vero Javascript Library code: you can get a full copy of the Vero Javascript Library code from our 
[API Reference Documentation.](http://www.getvero.com/api)