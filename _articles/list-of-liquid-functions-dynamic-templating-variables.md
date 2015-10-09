---
layout: articles
title: List of Liquid functions / dynamic templating variables
categories: email design
common_issues: true
---

# List of Liquid functions / dynamic templating variables
    
## Number precision

This works with any Liquid variable which are numbers.

Here is an example:

	{% raw %}
	{{item.price | precision: 2}}
	{% endraw %}
 
## Formatting

This works with any Liquid variable which are character, decimal (integer) number (base 10), exponential floating-point number, floating-point number, integer (base 10), octal number (base 8), a string of characters, unsigned decimal (integer) number, number in hexadecimal (base 16)
	
It follow the basic printf formatting specifiers (
[Printf format cheat sheet](http://alvinalexander.com/programming/printf-format-cheat-sheet))
 
Here is an example:

	{% raw %}
	event.invoice_ref = 12345
	{{event.invoice_ref | format: '%05d'}} => 12345

	event.invoice_ref = 123
	{{event.invoice_ref | format: '%05d'}} => 00123

	event.invoice_ref = 1
	{{event.invoice_ref | format: '%5d'}} => '    1'
	{% endraw %}
 
## Encoding

This is primarily useful when you want to pass variables such as email address to URL params.

Here is an example:

	{% raw %}
	user.email = 'damien+test@getvero.com'
	{{ user.email | encode }} => 'damien%2Btest%40getvero.com'
	{% endraw %}

## Date/Timezone precision

This works if you track a date following the [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)

Here are some examples:

	{% raw %}
	purchase_date = "Thu Nov 29 2001 14:33:20 UTC"
	{{ purchase_date | time_zone: 'Sydney' }} => 2001-11-30 01:33:20 +1100

	purchase_date = "29/11/2001 00:00:00 -0900"
	{{ purchase_date | time_zone: 'Sydney' }} => 2001-11-29 20:00:00 +1100

	purchase_date = "Thu Nov 29 2001 14:33:20 UTC"
	{{ purchase_date | time_zone: 'Sydney' | date: '%d/%m/%Y %H:%M:%S %Z' }} => 30/11/2001 01:33:20 EST
	{% endraw %}

All possible timezones can be found [here](http://apidock.com/rails/TimeZone).