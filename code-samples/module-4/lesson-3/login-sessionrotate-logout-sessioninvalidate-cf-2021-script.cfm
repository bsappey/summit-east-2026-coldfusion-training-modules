<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Login (sessionRotate) + logout (sessionInvalidate) (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    // Login
    if (structKeyExists(form, "login")) {
        lock type="exclusive" scope="session" timeout="20" {
            session.loggedIn = true;
            session.userId = 42;
            session.userName = "jdoe";
        }
        sessionRotate();
        location(url="dashboard.cfm", addToken=false);
    }

    // Logout
    if (structKeyExists(url, "logout")) {
        lock type="exclusive" scope="session" timeout="20" {
            sessionInvalidate();
        }
        location(url="index.cfm", addToken=false);
    }
</cfscript>
