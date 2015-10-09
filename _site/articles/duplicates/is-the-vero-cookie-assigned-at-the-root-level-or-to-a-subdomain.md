
  
##Is the Vero cookie assigned at the root level or to a subdomain?
    
By default the cookie is locked to a subdomain. You can easily specify the subdomain (or root domain) you'd like to store the Vero cookie against with this code:
<script type="text/javascript">
    var _veroq = _veroq || [];
        _veroq.push(['init', {
            api_key: "YOUR_API_KEY", 
            cookie_domain: "getvero.com"
        }]);
