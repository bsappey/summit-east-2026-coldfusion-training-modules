<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Template Method (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Template Method (illustrative): base prepare() calls brew()/addCondiments()
steps = ["boil water", "brew", "pour in cup", "add condiments"];
writeOutput("<p>Coffee prepare:</p><ol>");
for (step in steps) {
    detail = (step == "brew") ? "drip coffee grounds" : ((step == "add condiments") ? "add sugar and milk" : step);
    writeOutput("<li>" & encodeForHTML(detail) & "</li>");
}
writeOutput("</ol><p>Tea prepare:</p><ol>");
for (step in steps) {
    detail = (step == "brew") ? "steep tea bag" : ((step == "add condiments") ? "add lemon" : step);
    writeOutput("<li>" & encodeForHTML(detail) & "</li>");
}
writeOutput("</ol>");
</cfscript>
