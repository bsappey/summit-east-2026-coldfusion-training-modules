<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: CSRF token (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.csrfToken" default="demo">

// CF 2021+ - CSRF token demo (GET-safe, script)
<cfscript>
    if (!structKeyExists(session, "csrfToken") || !len(session.csrfToken)) {
        session.csrfToken = createUUID();
    }

    if (structKeyExists(form, "doSubmit")) {
        if (structKeyExists(form, "csrfToken") && form.csrfToken == session.csrfToken) {
            writeOutput("<p>CSRF token valid.</p>");
            session.csrfToken = createUUID();
        } else {
            writeOutput("<p>Invalid CSRF token.</p>");
            abort;
        }
    }

    writeOutput("<form method=""post""><input type=""hidden"" name=""csrfToken"" value=""" & encodeForHTMLAttribute(session.csrfToken) & """><button type=""submit"" name=""doSubmit"" value=""1"">Submit (demo)</button></form>");
    writeOutput("<p>Current session token (demo): " & encodeForHTML(session.csrfToken) & "</p>");
</cfscript>
