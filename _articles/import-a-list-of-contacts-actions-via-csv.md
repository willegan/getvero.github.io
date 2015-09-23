*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*Import a list of the past events contacts’ have triggered via CSV
    
#Import a list of the past events contacts’ have triggered via CSVVero tracks not only your contacts but their 
**actions**
 (to learn more about actions, read 
**What is an action?**
) on your website or in your application.

There are times when you will want to backfill or manually add customer actions. An example would be importing all of your contacts’ past orders.

When importing a list of past actions, Vero only supports three colums: 
email (who did the action), 
name (the name of the action, e.g. Completes checkout) and the 
date and time of the action (e.g. 2015-01-15 01:15+10).

Here’s an example of a CSV file that would update the contact profile of `tyrion.lannister@casterlyrock.com` with records of three checkout actions in January 2015.

email, action_name, time
tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-02 13:05+10
tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-15 02:00+10
tyrion.lannister@casterlyrock.com, Completes checkout, 2015-01-25 04:20+10

To import a CSV select `Settings > Import` at the top right of the Vero dashboard:

[![Screen Shot 2015-02-19 at 1.44.29 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.44.29-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.44.29-PM.png)

You can only import `.csv` files. If you are using Microsoft Excel or Mac Sheets, select `File > Save as... > CSV` to export your data in the correct format. `.xls`, `.xlsx` and other formats will not be accepted when you try to upload your file.

Before finalising the import, Vero will ask you if you want these actions to 
**trigger emails in Vero**
. By default, importing CSV files with a list of actions is passive â these actions won’t trigger your automated campaigns. If you want to have these actions act as triggers, simply tick the following box as part of your import:

[![Screen Shot 2015-02-19 at 1.39.06 PM](https://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.39.06-PM.png)](http://www.getvero.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-19-at-1.39.06-PM.png)

If you had an automated behavioral campaign that went out 10 days after a customer triggers 
Completes checkout, and you import an action with a date of nine days ago and tick this box, they’ll get the email one day from now.

If they had taken the action 10 or more days ago, they’ll get the email immediately.

You will receive an email once your CSV has been successfully imported, or if your CSV import fails. 
**You will always receive a confirmation email**
. For unsuccessful imports, Vero lists the rows of the CSV that were affected. You should review these rows, export them to a new CSV and import them again.