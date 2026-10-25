<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Function Parameters and Return Values (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Function Parameters
<cfscript>
    function greetUser(string name, string title = "", boolean formal = false) {
        var greeting = "";
        if (formal) {
            greeting = "Good day, ";
        } else {
            greeting = "Hi, ";
        }
        
        if (Len(title)) {
            greeting = greeting & title & " ";
        }
        
        greeting = greeting & name;
        return greeting;
    }
    
    // Use the function
    message1 = greetUser("John", "Mr.", true);
    message2 = greetUser("Jane", "", false);
    
    writeOutput("<p>" & message1 & "</p>");
    writeOutput("<p>" & message2 & "</p>");
</cfscript>
