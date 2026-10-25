<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Using Built-in Functions (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Built-in Functions --->
<!--- String Functions --->
<cfset text = "Hello World">
<cfset upperText = UCase(text)>
<cfset lowerText = LCase(text)>
<cfset length = Len(text)>
<cfset trimmed = Trim("  spaces  ")>
<cfset replaced = Replace(text, "World", "ColdFusion")>

<!--- Date Functions --->
<cfset today = Now()>
<cfset formattedDate = DateFormat(today, "mm/dd/yyyy")>
<cfset formattedTime = TimeFormat(today, "hh:mm:ss tt")>
<cfset tomorrow = DateAdd("d", 1, today)>
<cfset daysDiff = DateDiff("d", today, tomorrow)>

<!--- Array Functions --->
<cfset myArray = ["Apple", "Banana", "Cherry"]>
<cfset arrayLength = ArrayLen(myArray)>
<cfset firstItem = myArray[1]>
<cfset lastItem = myArray[arrayLength]>

<!--- Struct Functions --->
<cfset person = {name: "John", age: 30, city: "NYC"}>
<cfset structKeys = StructKeyList(person)>
<cfset hasName = StructKeyExists(person, "name")>

<cfoutput>
    <h3>Built-in Functions</h3>
    <p>Text: #text# → Upper: #upperText#, Lower: #lowerText#</p>
    <p>Length: #length#, Trimmed: "#trimmed#", Replaced: #replaced#</p>
    <p>Today: #formattedDate# #formattedTime#</p>
    <p>Tomorrow: #DateFormat(tomorrow, "mm/dd/yyyy")#</p>
    <p>Array: #arrayLength# items, First: #firstItem#, Last: #lastItem#</p>
    <p>Struct Keys: #structKeys#, Has Name: #hasName#</p>
</cfoutput>
