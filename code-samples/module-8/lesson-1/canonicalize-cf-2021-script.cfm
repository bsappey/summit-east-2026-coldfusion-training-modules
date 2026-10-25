<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: canonicalize() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.searchText" default="demo">

// CF 2021+ - Canonicalize (script)
<cfscript>
    raw = form.searchText;
    try {
        clean = canonicalize(raw, true, true);
    } catch (any e) {
        clean = "";
    }
</cfscript>
