<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Resize Image
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Resize Image
<cfscript>
    outDir = getDirectoryFromPath(getCurrentTemplatePath());
    imgName = "demo-" & createUUID() & ".png";
    imgPath = outDir & imgName;

    img = imageNew("", 400, 200, "rgb", "##1473E6");
    imageResize(img, 200, 100, "highQuality", 2);
    imageWrite(img, imgPath, 1, true);
</cfscript>

<cfoutput>
    <p><img src="#imgName#" alt="Generated image" style="max-width:100%; height:auto;"></p>
</cfoutput>
