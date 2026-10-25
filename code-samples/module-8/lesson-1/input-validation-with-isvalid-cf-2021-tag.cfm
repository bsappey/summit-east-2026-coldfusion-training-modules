<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Input validation with isValid() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.id" default="1">
<cfparam name="form.email" default="demo@example.com">
<cfparam name="form.status" default="demo">

<!--- CF 2021+ - Validate form/URL input --->
<cfset id = trim(form.id)>
<cfif NOT isValid("integer", id) OR id LT 1>
    <cfset id = 0>
</cfif>

<cfset email = trim(form.email)>
<cfif NOT isValid("email", email)>
    <cfset email = "">
</cfif>

<cfset status = trim(form.status)>
<cfif NOT listFindNoCase("active,pending,closed", status)>
    <cfset status = "active">
</cfif>
