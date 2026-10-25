<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Public and private methods (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
public string function getFormattedTotal(required numeric quantity, required numeric unitPrice) {
    return numberFormat(calculateTotal(arguments.quantity, arguments.unitPrice), "0.00");
}
private numeric function calculateTotal(required numeric quantity, required numeric unitPrice) { /* ... */ }
</cfscript>
