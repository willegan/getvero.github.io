#How to integrate Vero with Google Analytics for granular analytics

Vero can automatically append UTM parameters to outbound links in your email campaigns so that you can get a detailed view of your email marketing campaigns' impact on your Google Analytics results.

Select `Account > Integrations > Google Analytics` and select Enableto automatically append UTM codes to all links in your email campaigns.

Vero will append UTM tags in the following manner:

- `utm_source` is, by default, set to Vero. You can customise this under `Account > Integration > Google Analytics`
- `utm_source` is, by default, set to email. You can customise this under `Account > Integration > Google Analytics`
- `utm_campaign` is populated with the name of your campaign
- `utm_term` is populated with either Control or the variation of your campaign, e.g. A, B, etc. when running an A/B test.

If you add your own UTM tagsto any link, these will override the Vero defaults. For example, you could input a link as follows:

`http://www.yoursite.com?utm_campaign=some_term`

Vero would only append our `utm_source`, `utm_term` and `utm_medium` tags, using your custom `utm_campaign` on this link.