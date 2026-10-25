<!--- Shared include for Request scope demo --->
<cfoutput>
	<p>header.cfm sees Request.requestId: #encodeForHTML(Request.requestId)#</p>
	<p>Request.startTime: #encodeForHTML(dateTimeFormat(Request.startTime, "yyyy-mm-dd HH:nn:ss"))#</p>
	<p>Request.userContext.role: #encodeForHTML(Request.userContext.role)#</p>
</cfoutput>
