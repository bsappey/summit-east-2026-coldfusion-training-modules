<!---
  Implements IRepository for classroom Run demos.
  Verify: Adobe implements attribute on cfcomponent.
--->
<cfcomponent implements="IRepository">
	<cffunction name="init" returntype="DemoRepo" access="public">
		<cfset ensureStore()>
		<cfreturn this>
	</cffunction>

	<cffunction name="ensureStore" returntype="void" access="private">
		<cfif NOT structKeyExists(variables, "store")>
			<cfset variables.store = queryNew("id,name", "integer,varchar")>
		</cfif>
	</cffunction>

	<cffunction name="getById" returntype="any" access="public">
		<cfargument name="id" type="numeric" required="true">
		<cfset ensureStore()>
		<cfif variables.store.recordCount EQ 0>
			<cfset queryAddRow(variables.store)>
			<cfset querySetCell(variables.store, "id", arguments.id)>
			<cfset querySetCell(variables.store, "name", "demo")>
		</cfif>
		<cfreturn variables.store>
	</cffunction>

	<cffunction name="save" returntype="void" access="public">
		<cfargument name="entity" type="any" required="true">
		<cfset ensureStore()>
		<cfset queryAddRow(variables.store)>
		<cfset querySetCell(variables.store, "id", arguments.entity.id)>
		<cfset querySetCell(variables.store, "name", arguments.entity.name)>
	</cffunction>
</cfcomponent>
