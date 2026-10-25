<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: cfpdf read (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Read PDF metadata --->
<cfset pdfPath = expandPath("./demo.pdf")>
<cfif fileExists(pdfPath)>
    <cfpdf action="read" name="pdfInfo" source="#pdfPath#">
    <cfdump var="#pdfInfo#" label="PDF object (red in cfdump)">
    <cfabort>
<cfelse>
    <cfoutput><p>Place a demo.pdf next to this template to try cfpdf read.</p></cfoutput>
</cfif>
