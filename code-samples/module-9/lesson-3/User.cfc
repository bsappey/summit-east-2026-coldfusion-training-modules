<!---
  Companion CFC for new / createObject samples (module 9 lesson 3).
  Verify: Adobe createObject(); CFC init convention.
--->
<cfcomponent>
	<cffunction name="init" returntype="User" access="public">
		<cfargument name="firstName" type="string" required="true">
		<cfargument name="lastName" type="string" required="true">
		<cfset variables.firstName = arguments.firstName>
		<cfset variables.lastName = arguments.lastName>
		<cfreturn this>
	</cffunction>

	<cffunction name="getFullName" returntype="string" access="public">
		<cfreturn variables.firstName & " " & variables.lastName>
	</cffunction>
</cfcomponent>
