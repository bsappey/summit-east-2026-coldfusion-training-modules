<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Switch Statements (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Switch Statements
<cfscript>
    dayOfWeek = DayOfWeek(Now());
    userRole = "admin";
    
    // Basic switch
    switch (dayOfWeek) {
        case 1:
            dayName = "Sunday";
            break;
        case 2:
            dayName = "Monday";
            break;
        case 3:
        case 4:
        case 5:
            dayName = "Weekday";
            break;
        default:
            dayName = "Other";
    }
    
    // Switch with multiple values
    switch (userRole) {
        case "admin":
        case "superadmin":
            accessLevel = "Full Access";
            break;
        case "editor":
            accessLevel = "Edit Access";
            break;
        case "viewer":
            accessLevel = "Read Only";
            break;
        default:
            accessLevel = "No Access";
    }
    
    writeOutput("<p>Day: " & dayName & "</p>");
    writeOutput("<p>Access Level: " & accessLevel & "</p>");
</cfscript>
