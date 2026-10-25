<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Paths and Temp Dir
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Paths and Temp Dir --->
<cfset currentTemplate = getCurrentTemplatePath()>
<cfset currentDir = getDirectoryFromPath(currentTemplate)>
<cfset tempDir = getTempDirectory()>

<cfoutput>
    <h3>Paths</h3>
    <p><strong>Template:</strong> #currentTemplate#</p>
    <p><strong>Template dir:</strong> #currentDir#</p>
    <p><strong>Temp dir:</strong> #tempDir#</p>
</cfoutput>
