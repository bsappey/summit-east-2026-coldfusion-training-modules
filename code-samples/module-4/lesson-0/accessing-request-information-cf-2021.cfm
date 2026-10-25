<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Accessing Request Information (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Accessing Request Data --->
<cfoutput>
    <p>Request Method: #CGI.REQUEST_METHOD#</p>
    <p>Request URI: #CGI.REQUEST_URI#</p>
    <p>Query String: #CGI.QUERY_STRING#</p>
    <p>User Agent: #CGI.HTTP_USER_AGENT#</p>
    <p>Remote Address: #CGI.REMOTE_ADDR#</p>
</cfoutput>
