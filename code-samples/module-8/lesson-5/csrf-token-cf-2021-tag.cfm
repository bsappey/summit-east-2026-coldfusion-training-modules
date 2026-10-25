<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: CSRF token (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.csrfToken" default="demo">

<!--- CF 2021+ - CSRF token demo (GET-safe) --->
<cfif NOT structKeyExists(session, "csrfToken") OR NOT len(session.csrfToken)>
    <cfset session.csrfToken = createUUID()>
</cfif>

<cfif structKeyExists(form, "doSubmit")>
    <cfif structKeyExists(form, "csrfToken") AND form.csrfToken EQ session.csrfToken>
        <cfoutput><p>CSRF token valid.</p></cfoutput>
        <cfset session.csrfToken = createUUID()>
    <cfelse>
        <cfoutput><p>Invalid CSRF token.</p></cfoutput>
        <cfabort>
    </cfif>
</cfif>

<cfoutput>
<form method="post">
    <input type="hidden" name="csrfToken" value="#encodeForHTMLAttribute(session.csrfToken)#">
    <button type="submit" name="doSubmit" value="1">Submit (demo)</button>
</form>
<p>Current session token (demo): #encodeForHTML(session.csrfToken)#</p>
</cfoutput>
