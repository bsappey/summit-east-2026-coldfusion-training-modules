<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Reading URL/Form input (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="form.email" default="demo@example.com">

<cfscript>
    // URL example: product.cfm?id=123
    param name="URL.id" type="numeric" default="0";

    // Form example: form submits via POST
    if (StructKeyExists(Form, "submit")) {
        param name="Form.email" type="string" default="";
        email = Trim(Form.email);

        writeOutput("<p>Product ID: " & URL.id & "</p>");
        writeOutput("<p>Email: " & email & "</p>");
    }
</cfscript>
