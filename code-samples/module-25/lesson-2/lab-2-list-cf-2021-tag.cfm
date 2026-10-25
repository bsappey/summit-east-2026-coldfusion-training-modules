<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Lab 2 list (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- List page --->
<cfquery name="qContacts" datasource="CFTrainingDSN">
    SELECT id, name, email, created FROM contacts ORDER BY created DESC
</cfquery>
<table>
    <cfloop query="qContacts">
        <tr>
            <td><a href="detail.cfm?id=#encodeForURL(qContacts.id)#">#encodeForHTML(qContacts.name)#</a></td>
            <td>#encodeForHTML(qContacts.email)#</td>
        </tr>
    </cfloop>
</table>
