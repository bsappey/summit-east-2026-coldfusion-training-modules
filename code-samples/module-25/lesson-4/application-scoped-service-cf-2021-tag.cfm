<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Application-scoped service (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- In Application.cfc onApplicationStart --->
<cfset application.contactService = new services.ContactService("CFTrainingDSN")>

<!--- In index.cfm --->
<cfset qContacts = application.contactService.list()>
