
  
##How do I track UTM codes on landing pages automatically?
    
Google's 
[URL builder](https://support.google.com/analytics/answer/1033867?hl=en) uses 'UTM tags' to automatically track the source of visitors to your website.
Here's a URL with some UTM tags appended: 
[http://www.getvero.com?utm_medium=ppc&utm_source=f...](http://www.getvero.com?utm_medium=ppc&utm_source=facebook&utm_campaign=small_ad)
To automatically track these against user profiles in Vero, you should place the following code just after the 
[Vero library](http://www.getvero.com/docs/install-our-javascript-snippet) Javascript snippet (the first snippet on that page).
<script>
  var getUrlParams = function () {
    var params = {},
    hash;
    var hashes = decodeURI(window.location.href).replace(/\+/g," ").slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
      hash = hashes[i].split('=');
