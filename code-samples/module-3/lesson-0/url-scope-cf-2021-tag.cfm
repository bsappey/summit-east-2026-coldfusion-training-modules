<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: URL Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- URL Scope Example (page.cfm?id=123&page=2&filter=active) --->
<cfparam name="URL.id" type="numeric" default="0">
<cfparam name="URL.page" type="numeric" default="1">
<cfparam name="URL.filter" type="string" default="">
<cfif URL.page LT 1><cfset URL.page = 1></cfif>
<!--- Classroom: show validated params; real apps use cfqueryparam against your DSN --->
<cfoutput>
    <p>id=#encodeForHTML(URL.id)# page=#encodeForHTML(URL.page)# filter=#encodeForHTML(URL.filter)#</p>
    <p>Example parameterized WHERE would use cfqueryparam for id/filter and OFFSET #(URL.page - 1) * 10#.</p>
</cfoutput>
