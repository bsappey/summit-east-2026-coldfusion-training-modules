<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Template Method (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Template Method (illustrative): base prepare() calls brew()/addCondiments() --->
<cfset steps = ["boil water", "brew", "pour in cup", "add condiments"]>
<cfoutput><p>Coffee prepare:</p><ol></cfoutput>
<cfloop array="#steps#" index="step">
    <cfset detail = (step EQ "brew") ? "drip coffee grounds" : ((step EQ "add condiments") ? "add sugar and milk" : step)>
    <cfoutput><li>#encodeForHTML(detail)#</li></cfoutput>
</cfloop>
<cfoutput></ol><p>Tea prepare:</p><ol></cfoutput>
<cfloop array="#steps#" index="step">
    <cfset detail = (step EQ "brew") ? "steep tea bag" : ((step EQ "add condiments") ? "add lemon" : step)>
    <cfoutput><li>#encodeForHTML(detail)#</li></cfoutput>
</cfloop>
<cfoutput></ol></cfoutput>
