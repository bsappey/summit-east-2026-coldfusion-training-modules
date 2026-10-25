<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Application-scoped service (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
application.contactService = new services.ContactService("CFTrainingDSN");
qContacts = application.contactService.list();
</cfscript>
