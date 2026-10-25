/**
 * REST training sample (module 9). Lives in .cfc - not in a .cfm page.
 * Register REST services in ColdFusion Administrator as required.
 * Verified: Adobe REST attributes; queryExecute; Derby OFFSET/FETCH.
 */
component rest="true" restpath="/api/users" {

	remote array function getUsers(
		numeric limit = 10 restargsource="query",
		numeric offset = 0 restargsource="query"
	) httpmethod="GET" produces="application/json" {
		var qUsers = queryExecute(
			"SELECT userId, userName, email, createdDate FROM users ORDER BY createdDate DESC OFFSET :offset ROWS FETCH NEXT :limit ROWS ONLY",
			{
				offset: { value: arguments.offset, cfsqltype: "cf_sql_integer" },
				limit: { value: arguments.limit, cfsqltype: "cf_sql_integer" }
			},
			{ datasource: "CFTrainingDSN" }
		);
		return qUsers;
	}

	remote struct function getUser(
		required numeric id restargsource="path"
	) httpmethod="GET" produces="application/json" restpath="{id}" {
		var qUser = queryExecute(
			"SELECT userId, userName, email, createdDate FROM users WHERE userId = :id",
			{ id: { value: arguments.id, cfsqltype: "cf_sql_integer" } },
			{ datasource: "CFTrainingDSN" }
		);
		if (qUser.recordCount == 0) {
			getPageContext().getResponse().setStatus(404, "Not Found");
			return { error: "User not found" };
		}
		return qUser;
	}

	remote struct function createUser(
		required struct body restargsource="body"
	) httpmethod="POST" produces="application/json" consumes="application/json" {
		if (!structKeyExists(arguments.body, "username") || !structKeyExists(arguments.body, "email")) {
			getPageContext().getResponse().setStatus(400, "Bad Request");
			return { error: "Username and email are required" };
		}
		queryExecute(
			"INSERT INTO users (userName, email) VALUES (:userName, :email)",
			{
				userName: { value: arguments.body.username, cfsqltype: "cf_sql_varchar" },
				email: { value: arguments.body.email, cfsqltype: "cf_sql_varchar" }
			},
			{ datasource: "CFTrainingDSN", result: "insertResult" }
		);
		getPageContext().getResponse().setStatus(201, "Created");
		return { id: insertResult.generatedKey, message: "User created successfully" };
	}

	remote struct function updateUser(
		required numeric id restargsource="path",
		required struct body restargsource="body"
	) httpmethod="PUT" produces="application/json" restpath="{id}" consumes="application/json" {
		queryExecute(
			"UPDATE users SET email = :email WHERE userId = :id",
			{
				email: { value: arguments.body.email, cfsqltype: "cf_sql_varchar" },
				id: { value: arguments.id, cfsqltype: "cf_sql_integer" }
			},
			{ datasource: "CFTrainingDSN", result: "updateResult" }
		);
		if (updateResult.recordCount == 0) {
			getPageContext().getResponse().setStatus(404, "Not Found");
			return { error: "User not found" };
		}
		return { message: "User updated successfully" };
	}

	remote struct function deleteUser(
		required numeric id restargsource="path"
	) httpmethod="DELETE" produces="application/json" restpath="{id}" {
		queryExecute(
			"DELETE FROM users WHERE userId = :id",
			{ id: { value: arguments.id, cfsqltype: "cf_sql_integer" } },
			{ datasource: "CFTrainingDSN", result: "deleteResult" }
		);
		if (deleteResult.recordCount == 0) {
			getPageContext().getResponse().setStatus(404, "Not Found");
			return { error: "User not found" };
		}
		getPageContext().getResponse().setStatus(204, "No Content");
		return { message: "User deleted successfully" };
	}
}
