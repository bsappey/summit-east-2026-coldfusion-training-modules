<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: REST API Component Example (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>REST API Component Example (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- REST API Component (CF 2021+) ---&gt;
&lt;cfcomponent rest="true" restpath="/api/users"&gt;
    &lt;!--- GET /api/users - List all users ---&gt;
    &lt;cffunction name="getUsers" access="remote" httpmethod="GET" returntype="array" produces="application/json"&gt;
        &lt;cfargument name="limit" type="numeric" default="10" restargsource="query"&gt;
        &lt;cfargument name="offset" type="numeric" default="0" restargsource="query"&gt;
        
        &lt;cfquery name="qUsers" datasource="mydb"&gt;
            SELECT userID, username, email, createdDate
            FROM users
            ORDER BY createdDate DESC
            LIMIT &lt;cfqueryparam value="#arguments.limit#" cfsqltype="cf_sql_integer"&gt;
            OFFSET &lt;cfqueryparam value="#arguments.offset#" cfsqltype="cf_sql_integer"&gt;
        &lt;/cfquery&gt;
        
        &lt;cfreturn qUsers&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- GET /api/users/{id} - Get single user ---&gt;
    &lt;cffunction name="getUser" access="remote" httpmethod="GET" returntype="struct" produces="application/json" restpath="{id}"&gt;
        &lt;cfargument name="id" type="numeric" required="true" restargsource="path"&gt;
        
        &lt;cfquery name="qUser" datasource="mydb"&gt;
            SELECT userID, username, email, createdDate
            FROM users
            WHERE userID = &lt;cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer"&gt;
        &lt;/cfquery&gt;
        
        &lt;cfif qUser.recordCount EQ 0&gt;
            &lt;cfheader statuscode="404" statustext="Not Found"&gt;
            &lt;cfreturn {error: "User not found"}&gt;
        &lt;/cfif&gt;
        
        &lt;cfreturn qUser&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- POST /api/users - Create user ---&gt;
    &lt;cffunction name="createUser" access="remote" httpmethod="POST" returntype="struct" produces="application/json" consumes="application/json"&gt;
        &lt;cfargument name="body" type="struct" required="true" restargsource="body"&gt;
        
        &lt;!--- Validate input ---&gt;
        &lt;cfif NOT structKeyExists(arguments.body, "username") OR NOT structKeyExists(arguments.body, "email")&gt;
            &lt;cfheader statuscode="400" statustext="Bad Request"&gt;
            &lt;cfreturn {error: "Username and email are required"}&gt;
        &lt;/cfif&gt;
        
        &lt;cfquery name="qInsert" datasource="mydb" result="result"&gt;
            INSERT INTO users (username, email, createdDate)
            VALUES (
                &lt;cfqueryparam value="#arguments.body.username#" cfsqltype="cf_sql_varchar"&gt;,
                &lt;cfqueryparam value="#arguments.body.email#" cfsqltype="cf_sql_varchar"&gt;,
                &lt;cfqueryparam value="#now()#" cfsqltype="cf_sql_timestamp"&gt;
            )
        &lt;/cfquery&gt;
        
        &lt;cfheader statuscode="201" statustext="Created"&gt;
        &lt;cfreturn {id: result.generatedKey, message: "User created successfully"}&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- PUT /api/users/{id} - Update user ---&gt;
    &lt;cffunction name="updateUser" access="remote" httpmethod="PUT" returntype="struct" produces="application/json" restpath="{id}" consumes="application/json"&gt;
        &lt;cfargument name="id" type="numeric" required="true" restargsource="path"&gt;
        &lt;cfargument name="body" type="struct" required="true" restargsource="body"&gt;
        
        &lt;cfquery name="qUpdate" datasource="mydb" result="result"&gt;
            UPDATE users
            SET email = &lt;cfqueryparam value="#arguments.body.email#" cfsqltype="cf_sql_varchar"&gt;
            WHERE userID = &lt;cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer"&gt;
        &lt;/cfquery&gt;
        
        &lt;cfif result.recordCount EQ 0&gt;
            &lt;cfheader statuscode="404" statustext="Not Found"&gt;
            &lt;cfreturn {error: "User not found"}&gt;
        &lt;/cfif&gt;
        
        &lt;cfreturn {message: "User updated successfully"}&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- DELETE /api/users/{id} - Delete user ---&gt;
    &lt;cffunction name="deleteUser" access="remote" httpmethod="DELETE" returntype="struct" produces="application/json" restpath="{id}"&gt;
        &lt;cfargument name="id" type="numeric" required="true" restargsource="path"&gt;
        
        &lt;cfquery name="qDelete" datasource="mydb" result="result"&gt;
            DELETE FROM users
            WHERE userID = &lt;cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer"&gt;
        &lt;/cfquery&gt;
        
        &lt;cfif result.recordCount EQ 0&gt;
            &lt;cfheader statuscode="404" statustext="Not Found"&gt;
            &lt;cfreturn {error: "User not found"}&gt;
        &lt;/cfif&gt;
        
        &lt;cfheader statuscode="204" statustext="No Content"&gt;
        &lt;cfreturn {message: "User deleted successfully"}&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

