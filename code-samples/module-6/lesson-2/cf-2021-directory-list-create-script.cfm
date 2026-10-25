<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Directory List Create
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Directory List Create (script)
<cfscript>
    sep = createObject("java","java.io.File").separator;
    baseDir = getTempDirectory();
    workDir = baseDir & "cf-training-dir-" & createUUID();

    directoryCreate(workDir);

    file1 = workDir & sep & "a.txt";
    file2 = workDir & sep & "b.txt";
    fileWrite(file1, "A", "utf-8");
    fileWrite(file2, "B", "utf-8");

    qFiles = directoryList(workDir, false, "query");
</cfscript>

<cfoutput>
    <h3>Directory listing</h3>
    <p><strong>Directory:</strong> #workDir#</p>
    <ul>
        <cfloop query="qFiles">
            <li>#name# (#type#)</li>
        </cfloop>
    </ul>
</cfoutput>

<cfscript>
    // Cleanup (optional)
    directoryDelete(workDir, true);
</cfscript>
