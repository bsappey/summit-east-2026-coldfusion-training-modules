<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Read Write Append
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Read Write Append (tag) --->
<cfset tempDir = getTempDirectory()>
<cfset filePath = tempDir & "cf-training-" & createUUID() & ".txt">

<cffile action="write" file="#filePath#" output="Line 1" charset="utf-8" addNewLine="yes">
<cffile action="append" file="#filePath#" output="Line 2" charset="utf-8" addNewLine="yes">
<cffile action="read" file="#filePath#" variable="fileContents" charset="utf-8">

<cfoutput>
    <h3>File I/O</h3>
    <p><strong>File path:</strong> #filePath#</p>
    <pre>#encodeForHTML(fileContents)#</pre>
</cfoutput>
