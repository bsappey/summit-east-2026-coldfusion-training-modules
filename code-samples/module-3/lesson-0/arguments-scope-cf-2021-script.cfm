<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Arguments Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Arguments Scope Example
function calculateTotal(required numeric price, numeric quantity = 1, numeric discount = 0) {
    // Access via Arguments scope
    var total = Arguments.price * Arguments.quantity;
    total = total - (total * Arguments.discount / 100);
    
    return total;
}

// Call function
result = calculateTotal(price=100, quantity=2, discount=10);
writeOutput("Total: " & result);
</cfscript>
