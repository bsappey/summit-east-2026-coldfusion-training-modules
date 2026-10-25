<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Local Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Local Scope in CFScript --->
<cfscript>
    function processData(data) {
        // Use var for local variables
        var processed = [];
        var i = 0;
        
        // Or use local. prefix
        local.temp = "";
        
        for (i = 1; i <= ArrayLen(data); i++) {
            local.temp = data[i] & " processed";
            ArrayAppend(processed, local.temp);
        }
        
        return processed;
    }
</cfscript>
