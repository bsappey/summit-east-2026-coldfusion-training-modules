<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Working with Data Types (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Working with Different Data Types
<cfscript>
    // String
    text = "Hello World";
    textLength = Len(text);
    
    // Numeric (Integer)
    count = 42;
    doubled = count * 2;
    
    // Numeric (Decimal)
    price = 19.99;
    tax = price * 0.08;
    
    // Boolean
    isLoggedIn = true;
    canEdit = false;
    
    // Date/Time
    today = Now();
    tomorrow = DateAdd("d", 1, today);
    
    // Array
    colors = ["Red", "Green", "Blue"];
    firstColor = colors[1];
    
    // Struct
    person = {name: "John", age: 30, city: "NYC"};
    personName = person.name;
    
    writeOutput("<p>Text: " & text & " (Length: " & textLength & ")</p>");
    writeOutput("<p>Count: " & count & " (Doubled: " & doubled & ")</p>");
    writeOutput("<p>Price: " & DollarFormat(price) & " (Tax: " & DollarFormat(tax) & ")</p>");
    writeOutput("<p>Logged In: " & isLoggedIn & "</p>");
    writeOutput("<p>Today: " & DateFormat(today, "full") & "</p>");
    writeOutput("<p>First Color: " & firstColor & "</p>");
    writeOutput("<p>Person: " & personName & "</p>");
</cfscript>
