<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Form Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.username" default="demo">
<cfparam name="form.email" default="demo@example.com">

// Form Scope Example
// HTML form submits to this page
// <form method="post" action="process.cfm">
//     <input type="text" name="username">
//     <input type="email" name="email">
//     <input type="submit" name="submit">
// </form>

// Process form data
if (StructKeyExists(Form, "submit")) {
    // Validate and sanitize
    param name="Form.username" type="string" default="";
    param name="Form.email" type="string" default="";
    
    // Use form data
    username = Trim(Form.username);
    email = Trim(Form.email);
    
    // Process...
    writeOutput("<p>Username: " & username & "</p>");
    writeOutput("<p>Email: " & email & "</p>");
}
