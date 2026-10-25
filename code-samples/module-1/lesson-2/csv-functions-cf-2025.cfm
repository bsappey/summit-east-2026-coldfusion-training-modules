<!---
  Auto-generated from modules-data.js (getModule1Data)
  codeTitle: CSV Functions (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample needs cloud credentials / packages. If configuration is missing, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CSV functions (CF 2025+) --->
<cfscript>
    // For demos, use the current template folder so files are web-accessible when appropriate
    baseDir = getDirectoryFromPath(getCurrentTemplatePath());

    // 1) Write a CSV from an array of arrays
    outCsv = baseDir & "demo-output.csv";
    data = [
        ["Name", "Age", "City"],
        ["John", "30", "NYC"],
        ["Jane", "25", "LA"]
    ];
    CSVWrite(data, "arrayOfCFArray", outCsv);

    // 2) Read the CSV back as a query
    // CSVRead(source, outputFormat [, rowFilter] [, csvFormatConfiguration])
    q = CSVRead(outCsv, "query");
    writeOutput("<p>CSVRead rows: " & q.recordCount & "</p>");
    writeDump(var=q, label="CSV as query");

    // 3) CSVProcess streams rows; keep callbacks simple for engine compatibility
    // See Adobe CSVProcess() for rowProcessor / rowFilter signatures.
</cfscript>
<p><a href="demo-output.csv" target="_blank">Open generated CSV</a></p>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

