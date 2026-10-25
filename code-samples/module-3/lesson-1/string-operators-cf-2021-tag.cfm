<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: String Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: String Operators --->
<cfset firstName = "John">
<cfset lastName = "Doe">
<cfset greeting = "Hello">

<!--- String concatenation --->
<cfset fullName = firstName & " " & lastName>
<cfset message = greeting & ", " & fullName & "!">

<!--- String comparison --->
<cfset text1 = "Hello">
<cfset text2 = "World">
<cfset combined = text1 & " " & text2>

<!--- String functions with operators --->
<cfset upperName = UCase(firstName)>
<cfset lowerName = LCase(lastName)>
<cfset nameLength = Len(fullName)>

<!--- String contains check --->
<cfset searchText = "John Doe is a developer">
<cfset containsName = FindNoCase(fullName, searchText) GT 0>

<cfoutput>
    <h3>String Operations</h3>
    <p>Full Name: #fullName#</p>
    <p>Message: #message#</p>
    <p>Combined: #combined#</p>
    <p>Upper: #upperName#</p>
    <p>Lower: #lowerName#</p>
    <p>Length: #nameLength#</p>
    <p>Contains Name: #containsName#</p>
</cfoutput>
