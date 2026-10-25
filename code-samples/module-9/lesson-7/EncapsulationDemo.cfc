<!---
  Encapsulation companion (same pattern as components/EncapsulationConfigDemo.cfc).
  Verify: Adobe cffunction access; CFC variables scope; cfproperty.
--->
<cfcomponent accessors="no">
	<cfproperty name="fullName" type="string">

	<cffunction name="init" returntype="any" access="public">
		<cfargument name="fullName" type="string" required="true">
		<cfset variables.internalCache = structNew()>
		<cfset variables.fullName = arguments.fullName>
		<cfreturn this>
	</cffunction>

	<cffunction name="getFullName" returntype="string" access="public">
		<cfreturn formatName()>
	</cffunction>

	<cffunction name="formatName" returntype="string" access="private">
		<cfreturn trim(variables.fullName)>
	</cffunction>
</cfcomponent>
