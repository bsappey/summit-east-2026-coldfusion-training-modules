<!---
  Auto-generated from modules-data.js (getModule21Data)
  codeTitle: listTools() (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025 Update 8+ - tools/list via mcp-endpoint; Expected: tool list JSON --->
<cfscript>
// Expected: tools/list JSON with getTicketStatus
if (!structKeyExists(application, "mcpServer") || isNull(application.mcpServer)) {
    application.mcpServer = MCPServer({
        serverInfo: { name: "cf-training-mcp", version: "1.0.0" },
        capabilities: { tools: true, prompts: false, resources: false },
        tools: [{ cfc: "SupportTool", methods: [
            { method: "getTicketStatus", description: "Get support ticket status by ID." }
        ]}]
    });
}
endpointUrl = "http://127.0.0.1:8080/code-samples/module-21/lesson-1/mcp-endpoint.cfm";
cfhttp(method="POST", url=endpointUrl, result="listRes", timeout=20) {
    cfhttpparam(type="header", name="Content-Type", value="application/json");
    cfhttpparam(type="header", name="Accept", value="application/json, text/event-stream");
    cfhttpparam(type="body", value='{"jsonrpc":"2.0","id":2,"method":"tools/list","params":{}}');
}
writeOutput("listTools equivalent (JSON-RPC tools/list): " & encodeForHTML(left(toString(listRes.fileContent), 500)));
</cfscript>
