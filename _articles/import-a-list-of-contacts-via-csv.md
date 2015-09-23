*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*Import a list of contacts via CSV
    
#Import a list of contacts via CSVYou can add or update contacts in Vero using CSV.

You can only import CSV files up to 50,000 rows. For files larger than this, please email support@getvero.com and we will help you import your data.

To succesfully import a CSV you must have at least a list of contacts’ email addresses. You can also include other columns for contact 
**properties**
. An example would be a `first_name` column, or a `location` column. Vero will store these properties against the contact’s profile.

Here’s an example of a CSV file that can be successfully imported:

id, email, first_name, last_name, location
1859, tyrion.lannister@casterlyrock.com, Tyrion, Lannister, Casterly Rock

In Vero, after import, this data would look like this on the profile of this contact:

[![Screen Shot 2015-02-19 at 3.30.37 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-3.30.37-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-3.30.37-PM.png)

To import a CSV select `Configuration > Import` at the top right of the Vero dashboard:

[![Screen Shot 2015-02-19 at 1.44.29 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.44.29-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.44.29-PM.png)

You can only import `.csv` files. If you are using Microsoft Excel or Mac Sheets, select `File > Save as... > CSV` to export your data in the correct format. `.xls`, `.xlsx` and other formats will not be accepted when you try to upload your file.

After uploading your CSV file you’ll be asked to check Vero has correctly detected each of your columns. If you have imported a CSV before, or connected Vero’s API, we’ll also ask you to map your columns to any properties that you have already stored in Vero.

[![Screen Shot 2015-02-19 at 3.28.34 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-3.28.34-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-3.28.34-PM.png)

When importing, Vero will use the `email` column to match contacts’ profiles and will update all other properties with the latest values from your spreadsheet.

You will receive an email once your CSV has been successfully imported, or if your CSV import fails. 
**You will always receive a confirmation email**
. For unsuccessful imports, Vero lists the rows of the CSV that were affected. You should review these rows, export them to a new CSV and import them again.