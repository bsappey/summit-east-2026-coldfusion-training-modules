<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: encodeForJavaScript (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.label" default="demo">

// CF 2021+ - Safe JS string (script)
<cfscript>
    configLabel = form.label;
    writeOutput('<script>var label = "' & encodeForJavaScript(configLabel) & '";</script>');
</cfscript>
