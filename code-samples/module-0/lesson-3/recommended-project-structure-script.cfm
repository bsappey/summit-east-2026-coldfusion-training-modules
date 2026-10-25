<!---
  Auto-generated from modules-data.js (getModule0Data)
  codeTitle: Recommended Project Structure
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Recommended Project Structure (same organization for tag or script projects)
// Prefer arrayToList + encodeForHTML (avoids multiline string / ## parsing quirks in cfscript).
tree = arrayToList([ "/", "  /application", "    /components", "      UserService.cfc", "      ProductService.cfc", "    /controllers", "      UserController.cfc", "      ProductController.cfc", "    /models", "      User.cfc", "      Product.cfc", "    /views", "      /user", "        index.cfm", "        profile.cfm", "      /product", "        list.cfm", "        detail.cfm", "    /includes", "      header.cfm", "      footer.cfm", "  Application.cfc", "  index.cfm", "  /assets", "    /css", "      style.css", "    /js", "      app.js", "    /images" ], chr(10));
writeOutput("<pre>" & encodeForHTML(tree) & "</pre>");
</cfscript>
