<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Function Parameters and Return Values (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Function Parameters --->
<cffunction name="greetUser" returntype="string">
    <cfargument name="name" type="string" required="true">
    <cfargument name="title" type="string" required="false" default="">
    <cfargument name="formal" type="boolean" required="false" default="false">
    
    <cfif formal>
        <cfset greeting = "Good day, ">
    <cfelse>
        <cfset greeting = "Hi, ">
    </cfif>
    
    <cfif Len(title)>
        <cfset greeting = greeting & title & " ">
    </cfif>
    
    <cfset greeting = greeting & name>
    <cfreturn greeting>
</cffunction>

<!--- Use the function --->
<cfset message1 = greetUser("John", "Mr.", true)>
<cfset message2 = greetUser("Jane", "", false)>

<cfoutput>
    <p>#message1#</p>
    <p>#message2#</p>
</cfoutput>
