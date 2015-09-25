---
layout: articles
title:  "List of Liquid functions / dynamic templating variables"
categories: "'common issues','Email design'"
---

##List of Liquid functions / dynamic templating variables
    
##Number precision
You can provide a precision filter when working with dynamic templating variables.
This works with ANY Liquid variable which are numbers.
Here is an example:

\{\{item.price | precision: 2}}
 
##Formatting
You can provide a format filter when working with dynamic templating variables.
*This works with ANY Liquid variable which are character, decimal (integer) number (base 10), exponential floating-point number, floating-point number, integer (base 10), octal number (base 8), a string of characters, unsigned decimal (integer) number, number in hexadecimal (base 16)
	
*It follow the basic printf formatting specifiers (
[Printf format cheat sheet](http://alvinalexander.com/programming/printf-format-cheat-sheet))
 
Here is an example:

event.invoice_ref = 12345
\{\{event.invoice_ref | format: '%05d'}} => 12345

event.invoice_ref = 123
\{\{event.invoice_ref | format: '%05d'}} => 00123

event.invoice_ref = 1
\{\{event.invoice_ref | format: '%5d'}} => '    1'
 
##Encoding
You can provide an encoding filter when working with dynamic templating variables.
This is primarily useful when you want to pass variables such as email address to URL params
Here is an example:

user.email = 'damien+test@getvero.com'
{{ user.email | encode }} => 'damien%2Btest%40getvero.com'

##Date/Timezone precision
   You can provide a time_zone filter when working with dynamic templating variables.
*This only works if you have Liquid templating enabled (new accounts have this by default).
	
*This works with ANY Liquid variable which are numbers.
    Here are some examples:

purchase_date = "Thu Nov 29 2001 14:33:20 UTC"
\{\{ purchase_date | time_zone: 'Sydney' }} => 2001-11-30 01:33:20 +1100

purchase_date = "29/11/2001 00:00:00 -0900"
\{\{ purchase_date | time_zone: 'Sydney' }} => 2001-11-29 20:00:00 +1100

purchase_date = "Thu Nov 29 2001 14:33:20 UTC"
\{\{ purchase_date | time_zone: 'Sydney' | date: '%d/%m/%Y %H:%M:%S %Z' }} => 30/11/2001 01:33:20 EST

###TimeZone list:
*Pacific/Midway
	
*Pacific/Midway
	
*Pacific/Pago_Pago
	
*Pacific/Honolulu
	
*America/Juneau
	
*America/Los_Angeles
	
*America/Tijuana
	
*America/Denver
	
*America/Phoenix
	
*America/Chihuahua
	
*America/Mazatlan
	
*America/Chicago
	
*America/Regina
	
*America/Mexico_City
	
*America/Mexico_City
	
*America/Monterrey
	
*America/Guatemala
	
*America/New_York
	
*America/Indiana/Indianapolis
	
*America/Bogota
	
*America/Lima
	
*America/Lima
	
*America/Halifax
	
*America/Caracas
	
*America/La_Paz
	
*America/Santiago
	
*America/St_Johns
	
*America/Sao_Paulo
	
*America/Argentina/Buenos_Aires
	
*America/Guyana
	
*America/Godthab
	
*Atlantic/South_Georgia
	
*Atlantic/Azores
	
*Atlantic/Cape_Verde
	
*Europe/Dublin
	
*Europe/London
	
*Europe/Lisbon
	
*Europe/London
	
*Africa/Casablanca
	
*Africa/Monrovia
	
*Etc/UTC
	
*Europe/Belgrade
	
*Europe/Bratislava
	
*Europe/Budapest
	
*Europe/Ljubljana
	
*Europe/Prague
	
*Europe/Sarajevo
	
*Europe/Skopje
	
*Europe/Warsaw
	
*Europe/Zagreb
	
*Europe/Brussels
	
*Europe/Copenhagen
	
*Europe/Madrid
	
*Europe/Paris
	
*Europe/Amsterdam
	
*Europe/Berlin
	
*Europe/Berlin
	
*Europe/Rome
	
*Europe/Stockholm
	
*Europe/Vienna
	
*Africa/Algiers
	
*Europe/Bucharest
	
*Africa/Cairo
	
*Europe/Helsinki
	
*Europe/Kiev
	
*Europe/Riga
	
*Europe/Sofia
	
*Europe/Tallinn
	
*Europe/Vilnius
	
*Europe/Athens
	
*Europe/Istanbul
	
*Europe/Minsk
	
*Asia/Jerusalem
	
*Africa/Harare
	
*Africa/Johannesburg
	
*Europe/Moscow
	
*Europe/Moscow
	
*Europe/Moscow
	
*Asia/Kuwait
	
*Asia/Riyadh
	
*Africa/Nairobi
	
*Asia/Baghdad
	
*Asia/Tehran
	
*Asia/Muscat
	
*Asia/Muscat
	
*Asia/Baku
	
*Asia/Tbilisi
	
*Asia/Yerevan
	
*Asia/Kabul
	
*Asia/Yekaterinburg
	
*Asia/Karachi
	
*Asia/Karachi
	
*Asia/Tashkent
	
*Asia/Kolkata
	
*Asia/Kolkata
	
*Asia/Kolkata
	
*Asia/Kolkata
	
*Asia/Kathmandu
	
*Asia/Dhaka
	
*Asia/Dhaka
	
*Asia/Colombo
	
*Asia/Almaty
	
*Asia/Novosibirsk
	
*Asia/Rangoon
	
*Asia/Bangkok
	
*Asia/Bangkok
	
*Asia/Jakarta
	
*Asia/Krasnoyarsk
	
*Asia/Shanghai
	
*Asia/Chongqing
	
*Asia/Hong_Kong
	
*Asia/Urumqi
	
*Asia/Kuala_Lumpur
	
*Asia/Singapore
	
*Asia/Taipei
	
*Australia/Perth
	
*Asia/Irkutsk
	
*Asia/Ulaanbaatar
	
*Asia/Seoul
	
*Asia/Tokyo
	
*Asia/Tokyo
	
*Asia/Tokyo
	
*Asia/Yakutsk
	
*Australia/Darwin
	
*Australia/Adelaide
	
*Australia/Melbourne
	
*Australia/Melbourne
	
*Australia/Sydney
	
*Australia/Brisbane
	
*Australia/Hobart
	
*Asia/Vladivostok
	
*Pacific/Guam
	
*Pacific/Port_Moresby
	
*Asia/Magadan
	
*Asia/Magadan
	
*Pacific/Noumea
	
*Pacific/Fiji
	
*Asia/Kamchatka
	
*Pacific/Majuro
	
*Pacific/Auckland
	
*Pacific/Auckland
	
*Pacific/Tongatapu
	
*Pacific/Fakaofo
	
*Pacific/Apia
                
