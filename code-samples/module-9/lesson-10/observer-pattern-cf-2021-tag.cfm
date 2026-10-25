<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Observer pattern (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Observer pattern (illustrative classroom demo) --->
<cfset observers = ["CurrentConditionsDisplay", "ExtremeConditionsDisplay"]>
<cfset measurements = { temp: 80, humidity: 65, pressure: 30 }>
<cfloop array="#observers#" index="obs">
    <cfoutput><p>#encodeForHTML(obs)# updated: temp=#measurements.temp#, humidity=#measurements.humidity#, pressure=#measurements.pressure#</p></cfoutput>
</cfloop>
