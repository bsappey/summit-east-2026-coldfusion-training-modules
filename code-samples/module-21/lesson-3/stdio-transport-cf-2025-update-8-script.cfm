<!---
  Auto-generated from modules-data.js (getModule21Data)
  codeTitle: STDIO transport (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Classroom: use HTTP mcp-endpoint.cfm. STDIO needs Node/Python MCP on the host.
stdioConfig = { transport: { type: "stdio", command: "node", args: ["path/to/mcp-server.js"] } };
writeOutput("STDIO MCP is for a local process. Classroom HTTP demos use mcp-endpoint.cfm instead. Config: " & encodeForHTML(serializeJSON(stdioConfig)));
</cfscript>
