<!---
  Auto-generated from modules-data.js (getModule0Data)
  codeTitle: Checking Your ColdFusion Environment (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Check ColdFusion Version and Environment --->
<cfset javaVersion = createObject("java","java.lang.System").getProperty("java.version")>

<cfoutput>
    <h3>ColdFusion Environment Information</h3>
    <p>Product: #Server.ColdFusion.ProductName#</p>
    <p>Version: #Server.ColdFusion.ProductVersion#</p>
    <p>Update level: #Server.ColdFusion.UpdateLevel#</p>
    <p>Edition: #Server.ColdFusion.ProductLevel#</p>
    <p>Java version: #javaVersion#</p>
    <p>OS: #Server.OS.Name# (#Server.OS.Arch#)</p>
    <p>Server name: #CGI.SERVER_NAME#</p>
    <p>Server port: #CGI.SERVER_PORT#</p>
</cfoutput>
