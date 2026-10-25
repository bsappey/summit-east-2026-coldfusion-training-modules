<!---
  Auto-generated from modules-data.js (getModule1Data)
  codeTitle: Multiple Exception Handling (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Multiple exception types in one catch (CF 2025+), Adobe blog form --->
<cfscript>
try {
    throw(type="IOException", message="File not found error.");
} catch (IOException | SQLException e) {
    writeOutput("An Exception occurred: " & encodeForHTML(e.message));
}
</cfscript>
