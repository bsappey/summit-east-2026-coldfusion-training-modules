<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Session Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Session Scope Example --->
<!--- Enable sessions in Application.cfc --->
<!--- this.sessionManagement = true --->

<!--- Set session data --->
<cfset Session.userId = 123>
<cfset Session.userName = "john.doe">
<cfset Session.loginTime = Now()>
<cfset Session.cart = []>

<!--- Access session data --->
<cfoutput>
    <p>Welcome, #Session.userName#!</p>
    <p>Logged in: #DateFormat(Session.loginTime, "full")#</p>
    <p>Cart items: #ArrayLen(Session.cart)#</p>
</cfoutput>

<!--- Clear session on logout (CF 10+) --->
<cfset sessionInvalidate()>
