---
layout: articles
title:  "Import a list of the past events contacts' have triggered via CSV"
categories: "'common issues', 'Data'"
---

#Import a list of the past events contacts' have triggered via CSV

Vero tracks not only your contacts but their  **events** (to learn more about events, read  **What is an event?**) on your website or in your application.

There are times when you will want to backfill or manually add customer events. An example would be importing all of your contacts' past orders.

When importing a list of past events, Vero only supports three colums: email (who did the event), name (the name of the event, e.g. Completes checkout) and the date and time of the event (e.g. `2015-01-15 01:15+10`).

Here's an example of a CSV file that would update the contact profile of `tyrion.lannister@casterlyrock.com` with records of three checkout events in January 2015.

    email, event_name, time
    tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-02 13:05+10
    tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-15 02:00+10
    tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-25 04:20+10

To import a CSV select the 'Import/Export' menu item in the **left sidebar**. 

**Then** select the CSV upload button:

![{{site.data.screenshots.vero.csv-import['title']}}]({{site.data.screenshots.vero.csv-import.image}})

You can only import `.csv` files. If you are using Microsoft Excel or Mac Sheets, select `File > Save as... > CSV` to export your data in the correct format. `.xls`, `.xlsx` and other formats will not be accepted when you try to upload your file.

Before finalising the import, Vero will ask you if you want these events to **trigger emails in Vero**. By default, importing CSV files with a list of events is passive a these events won't trigger your automated campaigns. If you want to have these events act as triggers, simply tick the appropriate box as part of your import:


![{{site.data.screenshots.vero.event-greybox['title']}}]({{site.data.screenshots.vero.event-greybox.image}})

If you had an automated behavioral campaign that went out 10 days after a customer triggers Completes checkout, and you import an event with a date of nine days ago and tick this box, they'll get the email one day from now.

If they had taken the event 10 or more days ago, they'll get the email immediately.

You will receive an email once your CSV has been successfully imported, or if your CSV import fails. **You will always receive a confirmation email**. For unsuccessful imports, Vero lists the rows of the CSV that were affected. You should review these rows, export them to a new CSV and import them again.