<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Resize Image
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Resize Image --->
<cfset outDir = getDirectoryFromPath(getCurrentTemplatePath())>
<cfset imgName = "demo-" & createUUID() & ".png">
<cfset imgPath = outDir & imgName>

<cfset img = imageNew("", 400, 200, "rgb", "##1473E6")>
<cfset imageResize(img, 200, 100, "highQuality", 2)>
<cfset imageWrite(img, imgPath, 1, true)>

<cfoutput>
    <p><img src="#imgName#" alt="Generated image" style="max-width:100%; height:auto;"></p>
</cfoutput>
