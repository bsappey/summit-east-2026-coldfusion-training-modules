<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Logical Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Logical Operators --->
<cfset age = 25>
<cfset hasLicense = true>
<cfset hasInsurance = false>
<cfset isWeekend = false>

<!--- AND operator --->
<cfif age GTE 18 AND hasLicense>
    <cfset canDrive = true>
<cfelse>
    <cfset canDrive = false>
</cfif>

<!--- OR operator --->
<cfif hasLicense OR hasInsurance>
    <cfset canRent = true>
<cfelse>
    <cfset canRent = false>
</cfif>

<!--- NOT operator --->
<cfif NOT isWeekend>
    <cfset isWorkday = true>
<cfelse>
    <cfset isWorkday = false>
</cfif>

<!--- Complex logical expressions --->
<cfif (age GTE 18 AND hasLicense) AND (hasInsurance OR NOT isWeekend)>
    <cfset canRentCar = true>
<cfelse>
    <cfset canRentCar = false>
</cfif>

<cfoutput>
    <h3>Logical Operations</h3>
    <p>Age: #age#, License: #hasLicense#, Insurance: #hasInsurance#</p>
    <p>Can Drive: #canDrive#</p>
    <p>Can Rent: #canRent#</p>
    <p>Is Workday: #isWorkday#</p>
    <p>Can Rent Car: #canRentCar#</p>
</cfoutput>
