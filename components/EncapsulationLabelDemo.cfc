<!---
  Training CFC: variables scope + cffunction access (tag syntax).
  Browsable demo: code-samples/module-1/lesson-1/cfc-encapsulation-with-variables-and-private-methods-cf-2021.cfm
  accessors="no": avoids implicit getLabel() colliding with explicit getLabel() when accessors are enabled.
  Verify: Adobe cfcomponent (accessors); Adobe cfproperty; Adobe cffunction (access).
--->
<cfcomponent accessors="no">
	<cfproperty name="label" type="string" hint="Metadata; use accessors=true if you want implicit get/set">

	<cffunction name="init" returntype="any" access="public">
		<cfargument name="label" type="string" required="false" default="">
		<cfset variables.label = arguments.label>
		<cfset variables.secretToken = "">
		<cfreturn this>
	</cffunction>

	<cffunction name="getLabel" returntype="string" access="public">
		<cfreturn normalizeLabel()>
	</cffunction>

	<!--- Only callable from inside this CFC --->
	<cffunction name="normalizeLabel" returntype="string" access="private">
		<cfreturn trim(variables.label)>
	</cffunction>
</cfcomponent>
