<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Lab 1 pattern (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.name" default="demo">
<cfparam name="form.email" default="demo@example.com">

<!--- Pseudocode pattern --->
<cfset errors = []>
<cfif structKeyExists(form, "submit")>
    <cfif NOT len(trim(form.name))>
        <cfset arrayAppend(errors, "Name is required")>
    </cfif>
    <cfif NOT isValid("email", form.email)>
        <cfset arrayAppend(errors, "Valid email is required")>
    </cfif>
    <cfif arrayLen(errors) EQ 0>
        <!--- show success --->
    </cfif>
</cfif>
<cfif arrayLen(errors) GT 0 OR NOT structKeyExists(form, "submit")>
    <!--- show form, output errors --->
</cfif>
