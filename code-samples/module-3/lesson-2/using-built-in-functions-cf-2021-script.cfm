<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Using Built-in Functions (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Built-in Functions
<cfscript>
    // String Functions
    text = "Hello World";
    upperText = UCase(text);
    lowerText = LCase(text);
    length = Len(text);
    trimmed = Trim("  spaces  ");
    replaced = Replace(text, "World", "ColdFusion");
    
    // Date Functions
    today = Now();
    formattedDate = DateFormat(today, "mm/dd/yyyy");
    formattedTime = TimeFormat(today, "hh:mm:ss tt");
    tomorrow = DateAdd("d", 1, today);
    daysDiff = DateDiff("d", today, tomorrow);
    
    // Array Functions
    myArray = ["Apple", "Banana", "Cherry"];
    arrayLength = ArrayLen(myArray);
    firstItem = myArray[1];
    lastItem = myArray[arrayLength];
    
    // Struct Functions
    person = {name: "John", age: 30, city: "NYC"};
    structKeys = StructKeyList(person);
    hasName = StructKeyExists(person, "name");
    
    writeOutput("<h3>Built-in Functions</h3>");
    writeOutput("<p>Text: " & text & " → Upper: " & upperText & ", Lower: " & lowerText & "</p>");
    writeOutput("<p>Length: " & length & ", Trimmed: "" & trimmed & "", Replaced: " & replaced & "</p>");
    writeOutput("<p>Today: " & formattedDate & " " & formattedTime & "</p>");
    writeOutput("<p>Tomorrow: " & DateFormat(tomorrow, "mm/dd/yyyy") & "</p>");
    writeOutput("<p>Array: " & arrayLength & " items, First: " & firstItem & ", Last: " & lastItem & "</p>");
    writeOutput("<p>Struct Keys: " & structKeys & ", Has Name: " & hasName & "</p>");
</cfscript>
