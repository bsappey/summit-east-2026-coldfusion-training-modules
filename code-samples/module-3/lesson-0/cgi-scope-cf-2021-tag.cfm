<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: CGI Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CGI Scope Example --->
<cfoutput>
    <h3>Request Information</h3>
    <p>Method: #CGI.REQUEST_METHOD#</p>
    <p>URI: #CGI.REQUEST_URI#</p>
    <p>Query String: #CGI.QUERY_STRING#</p>
    <p>User Agent: #CGI.HTTP_USER_AGENT#</p>
    <p>Remote IP: #CGI.REMOTE_ADDR#</p>
    <p>Server: #CGI.SERVER_NAME#</p>
    <p>Port: #CGI.SERVER_PORT#</p>
</cfoutput>

<!--- Use for conditional logic --->
<cfif CGI.REQUEST_METHOD EQ "POST">
    <!--- Handle POST request --->
<cfelseif CGI.REQUEST_METHOD EQ "GET">
    <!--- Handle GET request --->
</cfif>
