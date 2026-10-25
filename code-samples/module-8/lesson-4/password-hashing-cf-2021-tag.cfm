<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Password hashing (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Hash password with salt (self-contained demo) --->
<cfparam name="form.password" default="Secret123!">
<cfset salt = createUUID()>
<cfset hashedPassword = hash(form.password & salt, "SHA-256")>
<!--- Simulate DB row --->
<cfset userRecord = { userId: 42, salt: salt, hashedPassword: hashedPassword }>

<!--- On login verify --->
<cfset storedSalt = userRecord.salt>
<cfset storedHashedPassword = userRecord.hashedPassword>
<cfset attemptHash = hash(form.password & storedSalt, "SHA-256")>
<cfif attemptHash EQ storedHashedPassword>
    <cfset session.userId = userRecord.userId>
    <cfset session.authenticated = true>
    <cfoutput><p>Login success for userId #session.userId#</p></cfoutput>
<cfelse>
    <cfoutput><p>Login failed</p></cfoutput>
</cfif>
