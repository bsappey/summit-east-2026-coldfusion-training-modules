<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: createObject("component", path) (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- createObject then init (companion User.cfc) --->
<cfset cfcPath = "User">
<cfset obj = createObject("component", cfcPath)>
<cfset obj.init(firstName="Jane", lastName="Doe")>
<cfoutput><p>#encodeForHTML(obj.getFullName())#</p></cfoutput>
