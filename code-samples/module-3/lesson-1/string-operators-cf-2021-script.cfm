<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: String Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: String Operators
<cfscript>
    firstName = "John";
    lastName = "Doe";
    greeting = "Hello";
    
    // String concatenation
    fullName = firstName & " " & lastName;
    message = greeting & ", " & fullName & "!";
    
    // String comparison
    text1 = "Hello";
    text2 = "World";
    combined = text1 & " " & text2;
    
    // String functions with operators
    upperName = UCase(firstName);
    lowerName = LCase(lastName);
    nameLength = Len(fullName);
    
    // String contains check
    searchText = "John Doe is a developer";
    containsName = FindNoCase(fullName, searchText) > 0;
    
    writeOutput("<h3>String Operations</h3>");
    writeOutput("<p>Full Name: " & fullName & "</p>");
    writeOutput("<p>Message: " & message & "</p>");
    writeOutput("<p>Combined: " & combined & "</p>");
    writeOutput("<p>Upper: " & upperName & "</p>");
    writeOutput("<p>Lower: " & lowerName & "</p>");
    writeOutput("<p>Length: " & nameLength & "</p>");
    writeOutput("<p>Contains Name: " & containsName & "</p>");
</cfscript>
