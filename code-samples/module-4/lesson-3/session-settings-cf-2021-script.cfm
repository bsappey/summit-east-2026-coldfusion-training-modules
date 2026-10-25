<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Session settings (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Demo of typical Application.cfc session settings (does not replace root Application.cfc)
sessionSettings = {
    name: "MyApplication",
    sessionManagement: true,
    sessionTimeout: CreateTimeSpan(0, 0, 30, 0)
};
writeOutput("<p>this.name (example): " & encodeForHTML(sessionSettings.name) & "</p>");
writeOutput("<p>this.sessionManagement: " & sessionSettings.sessionManagement & "</p>");
writeOutput("<p>this.sessionTimeout (CreateTimeSpan days): " & sessionSettings.sessionTimeout & "</p>");
writeOutput("<p>Session scope available here: " & (isDefined("session") ? "yes" : "no") & "</p>");
</cfscript>
