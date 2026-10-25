<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Application Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Application Scope Example (page demo; init keys if missing)
if (!StructKeyExists(Application, "appName")) {
    lock scope="Application" timeout="10" type="exclusive" {
        if (!StructKeyExists(Application, "appName")) {
            Application.appName = "My Application";
            Application.startTime = Now();
            Application.counter = 0;
            Application.config = { maxUsers: 1000, maintenanceMode: false };
        }
    }
}

writeOutput("<p>App: " & encodeForHTML(Application.appName) & "</p>");
writeOutput("<p>Started: " & DateFormat(Application.startTime, "full") & "</p>");
writeOutput("<p>Counter: " & Application.counter & "</p>");

lock scope="Application" timeout="10" type="exclusive" {
    Application.counter++;
}
</cfscript>
