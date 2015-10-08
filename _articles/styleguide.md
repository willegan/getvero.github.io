---
layout: articles
title:  "Help Doc Styleguide"
getting_started: false
hide: true
---

#Styleguide

Welcome to the Vero Help Docs styleguide. Please refer to this guide when creating or editing help docs. Included are all the patterns and styles you will need to create awesome and super helpful help documentation.



#Article Title
Article should have a single title using `#`

##Section Heading
Section headings break up the content into larger chunks using `##`

###Section Sub Heading
Each section can have smaller headings using `###`

####Small Headings
Sometimes you need smaller headings for little sections or details, use `####`



##Article Notes

Underneath an article title, if there are notes that relate to the whole article, use italic text by enclosing the text with a single `*`. 

Example:

*This article applies to users of Vero's Javascript library only*

##Lists

###Unordered List

-   Item
-		**Item** - If your list item needs more details use a bold title before the content.
-		Item

###Ordered List

1.	Item 1
2.	**Item 3** - If your list item needs more details use a bold title before the content.
3.  Item 3

##Talking about the UI

When talking about the Vero app, you may want to refer to elements, sections or pages. Try to use the following styles. 

####Sections
When mentioning a section of the app, use Italics or a link to the section.

*For Example:*

Navigate to the *Templates* section of Vero. *or* Navigate to the [Templates](https://app.getvero.com/templates) section of Vero.


####Buttons
When mentioning a button or link in the app, use Bold.

*For example:*
	
Press the **Save** button.


##Images

Images make the help docs better but we should be mindful of the type of images we use. Try to show the most relevant part of the page with screenshots, try not to include content that does not relate to the help doc. It may be that you only need to show an image of a single button or of a small section of the page. 

###Inline Images

For images of buttons, icons or small elements, use the inline image snippet. For example.

Click the **Remove** {% include inline-image.html key="site.data.screenshots.vero.add-team-members.remove-team-member" %} button.

##Code

When showing inline code snippets, variables, links or properties, use the code tag. For example.

Set the condition `is_paying_customer`.

When talking about multiple lines of code use the pre code tags. For Example:

	<html>
		<head>
			<title>Vero</title>
		</head>
		<body>Is super awesome!</body>
	</html>







