<!---
  Auto-generated from modules-data.js (getModule24Data)
  codeTitle: JSON responseFormat pipeline (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
// Expected: ok / coldfusion
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0, responseFormat: "json" });
response = chatModel.chat('Return ONLY a JSON object with keys status and topic. Example: {"status":"ok","topic":"coldfusion"}');
raw = isStruct(response) && structKeyExists(response, "message") ? response.message : toString(response);
raw = trim(raw);
raw = reReplaceNoCase(raw, "^```(?:json)?\s*", "");
raw = reReplace(raw, "\s*```$", "");
data = deserializeJSON(raw);
writeOutput(encodeForHTML(data.status & " / " & data.topic));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

