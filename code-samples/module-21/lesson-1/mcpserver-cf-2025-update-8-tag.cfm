<!---
  Auto-generated from modules-data.js (getModule21Data)
  codeTitle: MCPServer (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025 Update 8+ - create MCPServer once; Expected: MCPServer ready --->
<cfscript>
if (!structKeyExists(application, "mcpServer") || isNull(application.mcpServer)) {
    application.mcpServer = MCPServer({
        serverInfo: { name: "cf-training-mcp", version: "1.0.0" },
        capabilities: { tools: true, prompts: true, resources: false },
        tools: [{
            cfc: "SupportTool",
            methods: [
                { method: "getTicketStatus", description: "Get support ticket status by ID." },
                { method: "createTicket", description: "Create a support ticket." }
            ]
        }]
    });
}
writeOutput("MCPServer ready: cf-training-mcp");
</cfscript>
