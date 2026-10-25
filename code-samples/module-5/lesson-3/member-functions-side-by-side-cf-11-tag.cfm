<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Member functions side-by-side (CF 11+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Side-by-side: traditional vs member (arrays) --->
<cfset bands = ["Beatles"]>
<!--- arrayAppend(bands, "U2") --->
<cfset bands.append("U2")>
<cfoutput>Count: #bands.len()#</cfoutput>

<!--- Side-by-side: traditional vs member (structs) --->
<cfset user = { name: "Sam" }>
<!--- StructKeyExists(user, "role") --->
<cfif user.keyExists("role") EQ false>
    <cfset user.insert("role", "dev")>
</cfif>
