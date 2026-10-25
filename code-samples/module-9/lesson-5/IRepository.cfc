<!---
  Interface companion for module 9 lesson 5.
  Verified against Adobe/CFDocs: use cfinterface (not cfcomponent interface="true").
--->
<cfinterface>
	<cffunction name="getById" returntype="any" access="public">
		<cfargument name="id" type="numeric" required="true">
	</cffunction>
	<cffunction name="save" returntype="void" access="public">
		<cfargument name="entity" type="any" required="true">
	</cffunction>
</cfinterface>
