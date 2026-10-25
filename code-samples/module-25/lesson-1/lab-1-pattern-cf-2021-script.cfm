<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Lab 1 pattern (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.name" default="demo">
<cfparam name="form.email" default="demo@example.com">

errors = [];
if (structKeyExists(form, "submit")) {
    if (!len(trim(form.name))) arrayAppend(errors, "Name is required");
    if (!isValid("email", form.email)) arrayAppend(errors, "Valid email is required");
    if (arrayLen(errors) == 0) { /* show success */ }
}
if (arrayLen(errors) > 0 || !structKeyExists(form, "submit")) { /* show form */ }
