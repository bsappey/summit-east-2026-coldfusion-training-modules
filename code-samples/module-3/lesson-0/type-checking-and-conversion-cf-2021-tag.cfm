<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Type Checking and Conversion (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Type Checking and Conversion --->
<cfset value1 = "123">
<cfset value2 = 456>
<cfset value3 = "45.67">

<!--- Check variable types --->
<cfset type1 = IsNumeric(value1)>
<cfset type2 = IsNumeric(value2)>
<cfset type3 = isValid("string", value1)>
<cfset type4 = IsDate(value1)>

<!--- Type conversion --->
<cfset numFromString = Val(value1)>
<cfset stringFromNum = ToString(value2)>
<cfset decimalFromString = Val(value3)>

<!--- Using cfparam for type enforcement --->
<cfparam name="age" type="numeric" default="0">
<cfparam name="name" type="string" default="">
<cfparam name="isActive" type="boolean" default="false">

<cfoutput>
    <p>Value1 (string 123) is numeric: #type1#</p>
    <p>Value2 (456) is numeric: #type2#</p>
    <p>Value1 is string: #type3#</p>
    <p>Converted: #numFromString# (IsNumeric: #IsNumeric(numFromString)#)</p>
    <p>String from number: #stringFromNum#</p>
    <p>Decimal: #decimalFromString#</p>
</cfoutput>
