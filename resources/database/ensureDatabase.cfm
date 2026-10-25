<!---
  First-run: create training schema + seed data if EMPLOYEES is missing.
  Safe to call on every application start (skips when tables exist).
  Note: Do not use return here - this file is included from onApplicationStart().
--->
<cfscript>
	/**
	 * Detect whether the training schema is already present.
	 * Prefer a direct probe on `employees` (Derby folds unquoted names to uppercase).
	 * The old SYS.SYSTABLES count could return a column name that is not `c`, so
	 * `tbl.c[1]` was unreliable and caused buildDatabase to run on every request.
	 */
	opts = { datasource: "CFTrainingDSN" };
	needBuild = false;
	try {
		queryExecute("SELECT 1 FROM employees FETCH FIRST 1 ROW ONLY", {}, opts);
	} catch (any e) {
		needBuild = true;
	}
	if (needBuild) {
		include "buildDatabase.cfm";
	}
</cfscript>
