<!---
  Demo tool CFC for Agent + tools samples.
  access="remote" required for CF AI tool registration.
--->
<cfcomponent output="false">

	<cffunction name="getTicketStatus" access="remote" returntype="string" output="false">
		<cfargument name="ticketId" type="string" required="true">
		<cfset var id = trim(arguments.ticketId)>
		<cfif !len(id)><cfreturn "unknown ticket"></cfif>
		<cfif compareNoCase(id, "TKT-12345") EQ 0><cfreturn "in progress"></cfif>
		<cfreturn "open">
	</cffunction>

	<cffunction name="createTicket" access="remote" returntype="struct" output="false">
		<cfargument name="summary" type="string" required="true">
		<cfargument name="priority" type="string" required="true">
		<cfreturn {
			id: "TKT-" & left(replace(createUUID(), "-", "", "all"), 8),
			status: "new",
			summary: arguments.summary,
			priority: arguments.priority
		}>
	</cffunction>

	<!--- Example of wrapping an external/API lookup --->
	<cffunction name="getOrderStatus" access="remote" returntype="string" output="false">
		<cfargument name="orderId" type="string" required="true">
		<!--- Demo stub. Replace with cfhttp or queryExecute in real apps --->
		<cfreturn "Order " & trim(arguments.orderId) & " is shipped">
	</cffunction>

</cfcomponent>
