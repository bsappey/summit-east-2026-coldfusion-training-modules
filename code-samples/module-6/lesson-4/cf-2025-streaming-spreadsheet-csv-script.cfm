<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2025+ - Streaming Spreadsheet + CSV
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample needs cloud credentials / packages. If configuration is missing, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
// CF 2025+ - Streaming spreadsheet + CSV
<cfscript>
    baseDir = getDirectoryFromPath(getCurrentTemplatePath());

    // 1) Create a streaming spreadsheet (large-file friendly)
    xlsxName = "streaming-" & createUUID() & ".xlsx";
    xlsxPath = baseDir & xlsxName;

    ss = streamingSpreadsheetNew("Expenses", 100);
    spreadsheetSetCellValue(ss, "Item", 1, 1);
    spreadsheetSetCellValue(ss, "Amount", 1, 2);
    spreadsheetSetCellValue(ss, "Coffee", 2, 1);
    spreadsheetSetCellValue(ss, 4.50, 2, 2);

    spreadsheetWrite(ss, xlsxPath, "", true, false);

    // 2) Read it back as a query (without loading everything)
    q = streamingSpreadsheetRead(xlsxPath, {
        sheetName: "Expenses",
        format: "query",
        headerRow: 1,
        excludeHeaderRow: true,
        rows: "1-10"
    });
    writeDump(q);

    // 3) Write the query to CSV, then read it back as a query
    csvName = "export-" & createUUID() & ".csv";
    csvPath = baseDir & csvName;

    CSVWrite(q, "query", csvPath);
    q2 = CSVRead(csvPath, "query");
    writeDump(q2);

    // 4) Clean up streaming spreadsheet temp files when done
    streamingSpreadsheetCleanup(ss);
</cfscript>

<cfoutput>
    <p><a href="#xlsxName#" target="_blank">Open streaming spreadsheet</a></p>
    <p><a href="#csvName#" target="_blank">Open generated CSV</a></p>
</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

