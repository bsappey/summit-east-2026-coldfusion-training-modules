<!---
  Auto-generated from modules-data.js (getModule1Data)
  codeTitle: SVG charts and cfchartset (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample needs cloud credentials / packages. If configuration is missing, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ - SVG chart (server-side) --->
<cfchart type="bar" renderer="svg" format="svg" title="Sales by Month" width="600" height="300">
    <cfchartseries type="bar" serieslabel="2026">
        <cfchartdata item="Jan" value="10">
        <cfchartdata item="Feb" value="14">
        <cfchartdata item="Mar" value="9">
    </cfchartseries>
</cfchart>

<!--- CF 2025+ - Multiple charts in one container --->
<cfchartset format="html" layout="horizontal" renderer="svg" width="900" height="350">
    <cfchart type="pie" title="Mix">
        <cfchartseries>
            <cfchartdata item="A" value="40">
            <cfchartdata item="B" value="60">
        </cfchartseries>
    </cfchart>

    <cfchart type="line" title="Trend">
        <cfchartseries>
            <cfchartdata item="Jan" value="5">
            <cfchartdata item="Feb" value="7">
            <cfchartdata item="Mar" value="6">
        </cfchartseries>
    </cfchart>
</cfchartset>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

