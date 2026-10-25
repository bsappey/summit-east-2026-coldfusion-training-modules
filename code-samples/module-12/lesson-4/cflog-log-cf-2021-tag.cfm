<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cflog / log() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - cflog --->
<cfset demoUserId = 42>
<cfset demoErrorMessage = "Payment gateway timeout (demo)">
<cflog text="User #demoUserId# submitted form" type="information">
<cflog text="#demoErrorMessage#" type="error" file="payments">
<cfoutput><p>Wrote information + error log entries (demo).</p></cfoutput>
