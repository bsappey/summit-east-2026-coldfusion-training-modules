<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Read Write Append
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Read Write Append (script)
<cfscript>
    tempDir = getTempDirectory();
    filePath = tempDir & "cf-training-" & createUUID() & ".txt";

    fileWrite(filePath, "Line 1", "utf-8");
    fileAppend(filePath, "Line 2", "utf-8", true);

    fileContents = fileRead(filePath, "utf-8");
</cfscript>

<cfoutput>
    <h3>File I/O</h3>
    <p><strong>File path:</strong> #filePath#</p>
    <pre>#encodeForHTML(fileContents)#</pre>
</cfoutput>
