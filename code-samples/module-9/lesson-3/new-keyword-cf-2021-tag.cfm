<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: new keyword (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Instantiate with new (companion User.cfc in this lesson folder) --->
<cfset user = new User(firstName="Jane", lastName="Doe")>
<cfset fullName = user.getFullName()>
<cfoutput><p>#encodeForHTML(fullName)#</p></cfoutput>
