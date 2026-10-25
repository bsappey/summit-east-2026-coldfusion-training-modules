<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Form Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Form Scope Example --->
<!--- HTML form submits to this page --->
<!--- <form method="post" action="process.cfm"> --->
<!---     <input type="text" name="username"> --->
<!---     <input type="email" name="email"> --->
<!---     <input type="submit" name="submit"> --->
<!--- </form> --->

<!--- Process form data --->
<cfif StructKeyExists(Form, "submit")>
    <!--- Validate and sanitize --->
    <cfparam name="Form.username" type="string" default="">
    <cfparam name="Form.email" type="string" default="">
    
    <!--- Use form data --->
    <cfset username = Trim(Form.username)>
    <cfset email = Trim(Form.email)>
    
    <!--- Process... --->
    <cfoutput>
        <p>Username: #username#</p>
        <p>Email: #email#</p>
    </cfoutput>
</cfif>
