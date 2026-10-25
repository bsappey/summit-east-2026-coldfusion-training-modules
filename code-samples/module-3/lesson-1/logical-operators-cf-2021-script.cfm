<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Logical Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Logical Operators
<cfscript>
    age = 25;
    hasLicense = true;
    hasInsurance = false;
    isWeekend = false;
    
    // AND operator
    if (age >= 18 && hasLicense) {
        canDrive = true;
    } else {
        canDrive = false;
    }
    
    // OR operator
    if (hasLicense || hasInsurance) {
        canRent = true;
    } else {
        canRent = false;
    }
    
    // NOT operator
    if (!isWeekend) {
        isWorkday = true;
    } else {
        isWorkday = false;
    }
    
    // Complex logical expressions
    if ((age >= 18 && hasLicense) && (hasInsurance || !isWeekend)) {
        canRentCar = true;
    } else {
        canRentCar = false;
    }
    
    writeOutput("<h3>Logical Operations</h3>");
    writeOutput("<p>Age: " & age & ", License: " & hasLicense & ", Insurance: " & hasInsurance & "</p>");
    writeOutput("<p>Can Drive: " & canDrive & "</p>");
    writeOutput("<p>Can Rent: " & canRent & "</p>");
    writeOutput("<p>Is Workday: " & isWorkday & "</p>");
    writeOutput("<p>Can Rent Car: " & canRentCar & "</p>");
</cfscript>
