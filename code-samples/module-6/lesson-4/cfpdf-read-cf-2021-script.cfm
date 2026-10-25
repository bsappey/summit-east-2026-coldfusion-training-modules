<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: cfpdf read (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    pdfPath = expandPath("./demo.pdf");
    if (fileExists(pdfPath)) {
        cfpdf(action="read", name="pdfInfo", source=pdfPath);
        writeDump(var=pdfInfo, label="PDF object");
        abort;
    } else {
        writeOutput("<p>Place a demo.pdf next to this template to try cfpdf read.</p>");
    }
</cfscript>
