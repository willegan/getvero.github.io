#Setting up Vero's webhooks

Vero provides webhooks for the following events within the Vero platform:

- Sent emails (an email is sent by Vero)
- Delivered emails (an email is delievered and received by the recipient email server)
- Opens
- Clicks
- Bounces (hard and soft)
- Unsubscribes
- User updates

##Webhook Setup

All of Vero's webhooks are sent to a single notification address. To enable the webhooks, go to `Account > Webhooks` and enter the URL at which you wish to receive the webhooks.

![Screen Shot 2015-02-19 at 2.42.17 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-2.42.17-PM.png)

For testing, you should check out Request Bin - it's a fantastic way to see the webhooks Vero (or any service) sends.

You can select Test and Vero will send an example of a webhook to the URL you've entered. This ensures Vero has registered the URL correctly and data arrives.

Once you have entered the URL you can choose which webhook events you want to track.

##Webhook format

###Webhooks for email events

Webhooks related to emails (sent, delivered, bounced, etc.) use the following format:

        {
            "type": "sent",
            "user": {
                "id": 12345,
                "email": "steve@getvero.com"
            },
            "campaign": {
                "id": 1235666234572456,
                "type": "transactional",
                "name": "Cart Abandonment Followup",
                "subject": "You have items in your shopping bag",
                "trigger-event": "Abandoned cart",
                "permalink": "http://app.getvero.com/view/1/9c8c3ac6ac65736926a6da5aefbf852d"
             },
             "sent_at": 1435016238,
             "user_agent":"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)"
        }

Key things to note:

- The `sent_at`, `clicked_at`, `opened_at` field follows a very Ruby-esque pattern. The key will change based on the event sent (as outlined below).

- The `trigger-event` value will be present for Transactional and Behavioral campaigns and represents the event that triggered the campaign.

The follow table outlines each of the `type` values:

- `sent` – When an email is sent from Vero to the customerâs email address.
- `delivered` – When the receiving ISP confirms the email has been received successfully.
- `opened` – When a recipient opens an email.
- `clicked` – When a recipient clicks an email.
- `bounced` – When an email is not received via the recipient's ISP.
- `unsubscribed` – When a user unsubscribes.

###Webhook for user updates

The webhook sent when a user is updated shows the details of the changes made to that user's properties or their tags. This allows you to update user details in other systems, based on changes sent to Vero, keeping everything in sync.

    {
        "type":"user_updated",
        "user": {
            "id": 123456,
            "email":"damien@getvero.com"
        },
        "changes": {
            "_tags": {
              "add": ["test"],
              "remove": []
            },
            "first_name": "Chris"
        }
    }

If you have any other questions regarding setting up webhooks, please write us an email. We're here to help.