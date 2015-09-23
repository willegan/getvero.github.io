*[Help](/help)

        ❯
        
*[Adding data to Vero](/help/adding-data-to-vero)

        ❯
        
*Tracking contacts across subdomains
    
#Tracking contacts across subdomainsBy default, Vero will cookie a customer on the current unique domain. If a customer is on `blog.getvero.com`, they will be cookied solely on this domain.

If you choose, you can tell Vero to cookie the user at the root domain. To do so, add the following line of code just before the `</head>` tag on your website:

<script>
    _veroq.push(['domain', 'getvero.com']);
</script>

This will ensure the cookie is stored at the root domain level. If you apply this code on all of your subdomians, your contacts will be tracked between each of your subdomains.