<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Method with arguments (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Script: method with args
public numeric function calculateTotal(required numeric quantity, required numeric unitPrice, numeric discount = 0) {
    return arguments.quantity * arguments.unitPrice * (1 - arguments.discount);
}
</cfscript>
