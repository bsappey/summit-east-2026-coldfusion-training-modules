<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: SendGatewayMessage outline (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 11 lesson 5 - SendGatewayMessage + Asynchronous CFML gateway (tags).
  Verified: Adobe SendGatewayMessage; Configuring an event gateway instance.
--->
<cfsetting showDebugOutput="false">

<!--- Use the same Gateway ID string you configured in Administrator for your CFML (Asynchronous CFML) gateway instance. --->
<cfset gatewayID = "AsynchLogger">
<cfset msg = { message = "hello from CFML training sample" }>

<!--- Uncomment after your listener CFC is registered and the gateway is running:
<cfset ok = SendGatewayMessage(gatewayID, msg)>
--->

<cfoutput>
	<h1>SendGatewayMessage (CFML gateway outline)</h1>
	<p>
		<code>SendGatewayMessage(gatewayID, data)</code> sends <code>data</code> to the Asynchronous CFML gateway instance named <code>gatewayID</code> in Administrator.
		Adobe documents <code>true</code>/<code>false</code> for whether the message was queued for the listener CFC.
	</p>
	<p><strong>Gateway ID (placeholder):</strong> #encodeForHTML(gatewayID)#</p>
	<p><strong>Payload struct:</strong> #encodeForHTML(serializeJSON(msg))#</p>
</cfoutput>
