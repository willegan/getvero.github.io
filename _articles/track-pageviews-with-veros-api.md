---
layout: articles
title:  "Track pageviews in Vero"
categories: data
getting_started: true
---

# Track pageviews in Vero

*This article applies to users of Vero's Javascript library.*

By default, Vero does not track anonymous users or pageviews. Vero's customers find pageview tracking is typically overwhelming, as is tracking anonymous users. As such, a user is added to your Vero database once they have been `identified` with the Vero Javascript library. At this point the user's activity is tracked.

If you would prefer to track pageviews, it is as simple as initializing Vero's Javascript library with this functionality enabled. Once enabled, Vero will track an event called `Viewed page` with a property `url` equal to the full path the user visited. This allows you to use pageviews for segmentation.

To turn pageview tracking on, add the following line to the main Vero Javascript library snippet (typically inserted just before the `</head>` tag on your HTML pages).

    <script>
        _veroq.push(['trackPageview']);
    </script>

Once installed correctly you will start seeing the `Viewed page` event in the *Logs* section of your Vero dashboard. 

![{{site.data.screenshots.vero.logs.events.viewed-page.title}}]({{site.data.screenshots.vero.logs.events.viewed-page.image}})


ou can get a full copy of the Vero Javascript Library code from our [API reference]({{site.data.links.vero_api}}).