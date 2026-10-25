<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: DDX processddx merge (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample needs cloud credentials / packages. If configuration is missing, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- See script sample for full DDX merge; cfpdf processddx uses inputfiles/outputfiles structs --->
<cfset inputStruct = { "Doc1": expandPath("./chapter1.pdf"), "Doc2": expandPath("./chapter2.pdf") }>
<cfset outputStruct = { "Out1": expandPath("./merged.pdf") }>
<cfpdf action="processddx" ddxfile="#expandPath("./merge.ddx")#" inputfiles="#inputStruct#" outputfiles="#outputStruct#" name="ddxResult">
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

