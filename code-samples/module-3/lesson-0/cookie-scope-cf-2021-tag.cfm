<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Cookie Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Cookie Scope Example --->
<!--- Read existing cookie (may not include cookies set earlier in this same response) --->
<cfif StructKeyExists(Cookie, "userPref")>
    <cfset userPreference = Cookie.userPref>
<cfelse>
    <cfset userPreference = "default">
</cfif>

<!--- Set new cookie (Set-Cookie on the response) --->
<cfcookie name="userPref" value="dark" expires="30" httponly="yes" secure="no" samesite="Lax">

<!--- Output the value we set; do not assume Cookie.userPref is already readable --->
<cfoutput>
    <p>Previous preference (Cookie scope): #encodeForHTML(userPreference)#</p>
    <p>New preference (set this request): dark</p>
</cfoutput>
