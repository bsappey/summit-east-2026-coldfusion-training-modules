<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: List functions (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfset ids = "10,20,30,40">
<cfset len = listLen(ids)>
<cfset first = listFirst(ids)>
<cfset arr = listToArray(ids)>
<cfoutput>
    Length: #len#, First: #first#<br>
    Second: #listGetAt(ids, 2)#
</cfoutput>
