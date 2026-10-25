<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Type Checking and Conversion (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Type Checking and Conversion
<cfscript>
    value1 = "123";
    value2 = 456;
    value3 = "45.67";
    
    // Check variable types
    type1 = IsNumeric(value1);
    type2 = IsNumeric(value2);
    type3 = isValid("string", value1);
    type4 = IsDate(value1);
    
    // Type conversion
    numFromString = Val(value1);
    stringFromNum = ToString(value2);
    decimalFromString = Val(value3);
    
    // Using param for type enforcement
    param name="age" type="numeric" default="0";
    param name="name" type="string" default="";
    param name="isActive" type="boolean" default="false";
    
    writeOutput("<p>Value1 (string 123) is numeric: " & type1 & "</p>");
    writeOutput("<p>Value2 (456) is numeric: " & type2 & "</p>");
    writeOutput("<p>Value1 is string: " & type3 & "</p>");
    writeOutput("<p>Converted: " & numFromString & " (IsNumeric: " & IsNumeric(numFromString) & ")</p>");
    writeOutput("<p>String from number: " & stringFromNum & "</p>");
    writeOutput("<p>Decimal: " & decimalFromString & "</p>");
</cfscript>
