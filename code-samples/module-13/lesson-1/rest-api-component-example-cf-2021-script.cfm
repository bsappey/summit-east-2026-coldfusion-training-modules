<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: REST API Component Example (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>REST API Component Example (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">// REST API Component (CF 2021+)
component rest="true" restpath="/api/users" {
    
    // GET /api/users - List all users
    remote array function getUsers(
        numeric limit = 10 restargsource="query",
        numeric offset = 0 restargsource="query"
    ) httpmethod="GET" produces="application/json" {
        var qUsers = queryExecute(
            "SELECT userID, username, email, createdDate
             FROM users
             ORDER BY createdDate DESC
             LIMIT :limit OFFSET :offset",
            {
                limit: {value: arguments.limit, sqltype: "integer"},
                offset: {value: arguments.offset, sqltype: "integer"}
            },
            {datasource: "mydb"}
        );
        
        return qUsers;
    }
    
    // GET /api/users/{id} - Get single user
    remote struct function getUser(
        required numeric id restargsource="path"
    ) httpmethod="GET" produces="application/json" restpath="{id}" {
        var qUser = queryExecute(
            "SELECT userID, username, email, createdDate
             FROM users
             WHERE userID = :id",
            {id: {value: arguments.id, sqltype: "integer"}},
            {datasource: "mydb"}
        );
        
        if (qUser.recordCount == 0) {
            getPageContext().getResponse().setStatus(404, "Not Found");
            return {error: "User not found"};
        }
        
        return qUser;
    }
    
    // POST /api/users - Create user
    remote struct function createUser(
        required struct body restargsource="body"
    ) httpmethod="POST" produces="application/json" consumes="application/json" {
        // Validate input
        if (!structKeyExists(arguments.body, "username") || !structKeyExists(arguments.body, "email")) {
            getPageContext().getResponse().setStatus(400, "Bad Request");
            return {error: "Username and email are required"};
        }
        
        var result = queryExecute(
            "INSERT INTO users (username, email, createdDate)
             VALUES (:username, :email, :createdDate)",
            {
                username: {value: arguments.body.username, sqltype: "varchar"},
                email: {value: arguments.body.email, sqltype: "varchar"},
                createdDate: {value: now(), sqltype: "timestamp"}
            },
            {datasource: "mydb", result: "insertResult"}
        );
        
        getPageContext().getResponse().setStatus(201, "Created");
        return {id: insertResult.generatedKey, message: "User created successfully"};
    }
    
    // PUT /api/users/{id} - Update user
    remote struct function updateUser(
        required numeric id restargsource="path",
        required struct body restargsource="body"
    ) httpmethod="PUT" produces="application/json" restpath="{id}" consumes="application/json" {
        var result = queryExecute(
            "UPDATE users SET email = :email WHERE userID = :id",
            {
                email: {value: arguments.body.email, sqltype: "varchar"},
                id: {value: arguments.id, sqltype: "integer"}
            },
            {datasource: "mydb", result: "updateResult"}
        );
        
        if (updateResult.recordCount == 0) {
            getPageContext().getResponse().setStatus(404, "Not Found");
            return {error: "User not found"};
        }
        
        return {message: "User updated successfully"};
    }
    
    // DELETE /api/users/{id} - Delete user
    remote struct function deleteUser(
        required numeric id restargsource="path"
    ) httpmethod="DELETE" produces="application/json" restpath="{id}" {
        var result = queryExecute(
            "DELETE FROM users WHERE userID = :id",
            {id: {value: arguments.id, sqltype: "integer"}},
            {datasource: "mydb", result: "deleteResult"}
        );
        
        if (deleteResult.recordCount == 0) {
            getPageContext().getResponse().setStatus(404, "Not Found");
            return {error: "User not found"};
        }
        
        getPageContext().getResponse().setStatus(204, "No Content");
        return {message: "User deleted successfully"};
    }
}</pre>

