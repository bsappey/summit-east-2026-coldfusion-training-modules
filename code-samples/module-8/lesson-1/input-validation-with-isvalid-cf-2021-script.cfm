<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Input validation with isValid() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.id" default="1">
<cfparam name="form.email" default="demo@example.com">
<cfparam name="form.status" default="demo">

// CF 2021+ - Validate form/URL input (script)
<cfscript>
    id = trim(form.id);
    if (!isValid("integer", id) || id < 1)
        id = 0;

    email = trim(form.email);
    if (!isValid("email", email))
        email = "";

    status = trim(form.status);
    if (!listFindNoCase("active,pending,closed", status))
        status = "active";
</cfscript>
