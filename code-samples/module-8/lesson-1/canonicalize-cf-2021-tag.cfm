<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: canonicalize() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.searchText" default="demo">

<!--- CF 2021+ - Canonicalize user input --->
<cfset raw = form.searchText>
<cftry>
    <cfset clean = canonicalize(raw, true, true)>
    <!--- use clean in query or display --->
    <cfcatch>
        <cfset clean = "">
    </cfcatch>
</cftry>
