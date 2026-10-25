<!---
  Classroom MCP HTTP endpoint for Module 21.
  GET: server info. POST: JSON-RPC via MCPServer.handleRequest() (no-arg; reads current request).
  FLAG - Adobe vs runtime: Adobe blog samples show handleRequest(requestBody=...); this CF build
  exposes void handleRequest() with no parameters (reads CGI/request body itself).
--->
<cfscript>
try {
    if (!structKeyExists(application, "mcpServer") || isNull(application.mcpServer)) {
        application.mcpServer = MCPServer({
            serverInfo: { name: "cf-training-mcp", version: "1.0.0" },
            capabilities: { tools: true, prompts: false, resources: false },
            tools: [{
                cfc: "SupportTool",
                methods: [
                    { method: "getTicketStatus", description: "Get support ticket status by ID." },
                    { method: "createTicket", description: "Create a support ticket." }
                ]
            }]
        });
    }
    // Runtime: no-arg handleRequest reads the HTTP body and writes the JSON-RPC response.
    application.mcpServer.handleRequest();
} catch (any e) {
    cfcontent(type="application/json", reset=true);
    writeOutput(serializeJSON({ error: e.message, detail: e.detail }));
}
</cfscript>
