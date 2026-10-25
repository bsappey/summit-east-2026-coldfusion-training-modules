<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Factory pattern (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- Factory returns interface implementation --->
<cfset factory = new model.SQLFactory()>
<cfset orderGateway = factory.makeMyObject("Order")>
<cfset orders = orderGateway.getRecentOrders()>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

