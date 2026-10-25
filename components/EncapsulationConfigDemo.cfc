<!---
  Training CFC: encapsulation with variables + private cffunction (tag syntax).
  Browsable demo: code-samples/module-9/lesson-7/encapsulation-with-variables-and-cffunction-access-cf-2021.cfm
  Avoid cfproperty name="displayName" (displayName is a cfcomponent metadata attribute in Adobe docs). accessors="no" avoids implicit getters colliding with explicit getFullName().
  Verify: Adobe cffunction (access); Adobe cfproperty; CFC variables scope.
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
