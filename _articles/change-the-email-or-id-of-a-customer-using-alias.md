#How to change the email or ID of a customer using 'alias'

This only applies to customers using Vero's own Javascript API Library or Segment.com's Analytics.js Javascript library.

Sometimes you will track and cookie a contact using a random identifier, or their email address, and later you will want to update this value with a unique identifier from your own database or system.

For example, if you had called the `identify` method and tracked a contact with the email `tyrion.lannister@casterlyrock.com` as a subscriber on your blog but, after they signed up for your free trial, wanted to identify them with your database identifier of `1285`, you can use Vero's `re-identify` method to update the contact's profile.

To learn about the re-identify (or alias) method in detail, refer to our 
[API Reference Documentation](http://www.getvero.com/api).

An example of the re-identify method is below:

    <script>
        _veroq.push(['reidentify', '1285']);
    </script>

Segment's `alias` method works in the same way. Vero is the only email marketing platform that works with Segment and provides an `alias` method, giving you a lot of power and flexibility over how your contacts are tracked.