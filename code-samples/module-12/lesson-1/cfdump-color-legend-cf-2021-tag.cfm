<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cfdump color legend (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Dump each type to see color coding --->
<cfset simpleStr = "Hello">
<cfset myArray = ["John", "Paul", "George", "Ringo"]>
<cfset myStruct = { name: "Alvin", age: 22, hairColor: "brown" }>
<cfquery name="qSample" datasource="CFTrainingDSN">
    SELECT productId, productName FROM products FETCH FIRST 3 ROWS ONLY
</cfquery>

<cfdump var="#simpleStr#" label="String (default)">
<cfdump var="#myArray#" label="Array (green)">
<cfdump var="#myStruct#" label="Struct (blue)">
<cfdump var="#qSample#" label="Query (purple)">
<!--- CFC object (red): instantiate a training entity if ORM is enabled --->
<cftry>
    <cfset prod = entityLoad("Product", 1, true)>
    <cfdump var="#prod#" label="CFC object (red)">
    <cfcatch><!--- ORM may be unavailable in some demo contexts ---></cfcatch>
</cftry>
<cfabort>
