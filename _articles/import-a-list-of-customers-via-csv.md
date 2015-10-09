---
layout: articles
title:  "Import a list of customers via CSV"
categories: data
common_issues: true
---

# Import a list of customers via CSV

You can add or update customers in Vero using CSV.

You can only import CSV files up to 50,000 rows. For files larger than this, please email [support@getvero.com](mailto:support@getvero.com) and we will help you import your data.

To succesfully import a CSV you must have at least a list of customers' email addresses. You can also include other columns for customer **properties**. An example would be a `first_name` column, or a `location` column. Vero will store these properties against the customer's profile.

Here's an example of a CSV file that can be successfully imported:

    id, email, first_name, last_name, location
    1859, tyrion.lannister@casterlyrock.com, Tyrion, Lannister, Casterly Rock

In Vero, after import, this data would look like this on the profile of this customer:

![{{site.data.screenshots.vero.profile['title']}}]({{site.data.screenshots.vero.profile.image}})

To import a CSV click on *Import/Export* menu at the left of the Vero dashboard.

You can only import `.csv` files. If you are using Microsoft Excel or Mac Sheets, select *File > Save as... > CSV* to export your data in the correct format. `.xls`, `.xlsx` and other formats will not be accepted when you try to upload your file.

After uploading your CSV file you'll be asked to check Vero has correctly detected each of your columns. If you have imported a CSV before, or connected Vero's API, we'll also ask you to map your columns to any properties that you have already stored in Vero.

![{{site.data.screenshots.vero.csv-match['title']}}]({{site.data.screenshots.vero.csv-match.image}})

When importing, Vero will use the `email` column to match customers' profiles and will update all other properties with the latest values from your spreadsheet.

You will receive an email once your CSV has been successfully imported, or if your CSV import fails. **You will always receive a confirmation email**. For unsuccessful imports, Vero lists the rows of the CSV that were affected. You should review these rows, export them to a new CSV and import them again.