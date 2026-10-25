<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: CGI Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// CGI Scope Example
writeOutput("<h3>Request Information</h3>");
writeOutput("<p>Method: " & CGI.REQUEST_METHOD & "</p>");
writeOutput("<p>URI: " & CGI.REQUEST_URI & "</p>");
writeOutput("<p>Query String: " & CGI.QUERY_STRING & "</p>");
writeOutput("<p>User Agent: " & CGI.HTTP_USER_AGENT & "</p>");
writeOutput("<p>Remote IP: " & CGI.REMOTE_ADDR & "</p>");
writeOutput("<p>Server: " & CGI.SERVER_NAME & "</p>");
writeOutput("<p>Port: " & CGI.SERVER_PORT & "</p>");

// Use for conditional logic
if (CGI.REQUEST_METHOD == "POST") {
    // Handle POST request
} else if (CGI.REQUEST_METHOD == "GET") {
    // Handle GET request
}
</cfscript>
