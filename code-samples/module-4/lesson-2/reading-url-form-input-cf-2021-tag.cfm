<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Reading URL/Form input (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- URL example: product.cfm?id=123 --->
<cfparam name="URL.id" type="numeric" default="0">

<!--- Form example: form submits via POST --->
<cfif StructKeyExists(Form, "submit")>
    <cfparam name="Form.email" type="string" default="">
    <cfset email = Trim(Form.email)>

    <cfoutput>
        <p>Product ID: #URL.id#</p>
        <p>Email: #email#</p>
    </cfoutput>
</cfif>
