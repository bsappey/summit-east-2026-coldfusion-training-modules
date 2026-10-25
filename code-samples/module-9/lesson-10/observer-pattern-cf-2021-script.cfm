<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Observer pattern (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Observer pattern (illustrative classroom demo)
observers = ["CurrentConditionsDisplay", "ExtremeConditionsDisplay"];
measurements = { temp: 80, humidity: 65, pressure: 30 };
for (obs in observers) {
    writeOutput("<p>" & encodeForHTML(obs) & " updated: temp=" & measurements.temp & ", humidity=" & measurements.humidity & ", pressure=" & measurements.pressure & "</p>");
}
</cfscript>
