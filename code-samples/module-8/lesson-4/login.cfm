<!--- Stub login for module-8 require-authentication samples --->
<cfparam name="form.username" default="">
<cfparam name="form.password" default="">
<cfif structKeyExists(form, "login") AND len(trim(form.username))>
	<cfset session.authenticated = true>
	<cfset session.username = trim(form.username)>
	<cflocation url="require-authentication-cf-2021-script.cfm" addtoken="false">
</cfif>
<cfoutput>
<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8"><title>Training login (demo)</title></head>
<body>
<h1>Training login (demo)</h1>
<p>Submit any username to set <code>session.authenticated</code>.</p>
<form method="post" action="login.cfm">
<label>Username <input type="text" name="username" value="#encodeForHTMLAttribute(form.username)#"></label>
<label>Password <input type="password" name="password"></label>
<button type="submit" name="login" value="1">Sign in</button>
</form>
</body></html>
</cfoutput>
