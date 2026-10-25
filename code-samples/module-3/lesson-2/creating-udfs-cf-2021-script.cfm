<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Creating UDFs (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Define a UDF
<cfscript>
    function calculateTotal(numeric price, numeric quantity = 1, numeric discount = 0) {
        var total = (price * quantity) * (1 - discount / 100);
        return total;
    }
    
    // Use the UDF
    result = calculateTotal(100, 2, 10);
    writeOutput("Total: " & DollarFormat(result));
</cfscript>
