<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Password hashing (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.password" default="demo">

// CF 2021+ - Hash password (script, self-contained)
<cfscript>
    param name="form.password" default="Secret123!";
    salt = createUUID();
    hashedPassword = hash(form.password & salt, "SHA-256");
    // Simulate DB row
    userRecord = { userId: 42, salt: salt, hashedPassword: hashedPassword };

    storedSalt = userRecord.salt;
    storedHashedPassword = userRecord.hashedPassword;
    attemptHash = hash(form.password & storedSalt, "SHA-256");
    if (attemptHash == storedHashedPassword) {
        session.userId = userRecord.userId;
        session.authenticated = true;
        writeOutput("<p>Login success for userId " & session.userId & "</p>");
    } else {
        writeOutput("<p>Login failed</p>");
    }
</cfscript>
