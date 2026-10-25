<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Arrays (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfset colors = ["Red", "Green", "Blue"]>
<cfset arrayAppend(colors, "Yellow")>
<cfoutput>#arrayLen(colors)#</cfoutput>
<cfloop array="#colors#" index="c">
    <cfoutput>#c# </cfoutput>
</cfloop>
