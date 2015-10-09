
  
##Fallback for dynamic templating variables
    
You can provide a fallback when working with dynamic templating variables.
*This only works if you have Liquid templating enabled (new accounts have this by default).
	
*This works with ANY Liquid variable.Here is an example:
{{user.first_name | fallback:'James Lamont'}}
         
        
          
If it's a quesiton, show the 'was this helpful'
            
Was this article helpful? 
                
                
