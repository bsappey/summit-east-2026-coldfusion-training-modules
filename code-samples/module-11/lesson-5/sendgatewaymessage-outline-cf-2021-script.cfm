<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: SendGatewayMessage outline (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 11 lesson 5 - SendGatewayMessage + Asynchronous CFML gateway (script).   Verified: Adobe SendGatewayMessage.
<cfsetting showDebugOutput="false">
<cfscript>
	gatewayID = "AsynchLogger";
	msg = { message: "hello from CFML training sample" };
	// ok = SendGatewayMessage(gatewayID, msg);
	writeOutput("<h1>SendGatewayMessage (CFML gateway outline)</h1>");
	writeOutput("<p>Uncomment when a CFML gateway instance with this Gateway ID and listener CFC is configured.</p>");
	writeOutput("<p><strong>Gateway ID (placeholder):</strong> " & encodeForHTML(gatewayID) & "</p>");
	writeOutput("<pre>" & encodeForHTML(serializeJSON(msg)) & "</pre>");
</cfscript>
