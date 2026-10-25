# Training database (Apache Derby embedded)

The ColdFusion app defines datasource **`CFTrainingDSN`** in the root **`Application.cfc`**, pointing at:

`resources/database/Derby/`

On first application start, **`ensureDatabase.cfm`** runs **`buildDatabase.cfm`** if the **`EMPLOYEES`** table is missing. That creates tables and inserts fresh seed rows (curriculum-themed, not legacy sample data).

The **`Derby/`** directory is **gitignored**; it is created when the server starts with `jdbc:derby:...;create=true`.

To reset: stop the server, delete **`resources/database/Derby`**, start again.

## If you see “Datasource CFTrainingDSN could not be found”

1. **Full engine + JDBC** - Use a complete ColdFusion install (CommandBox `adobe@2025` download finished). A minimal or partial install may not load the Derby JDBC driver (`org.apache.derby.jdbc.EmbeddedDriver`), so programmatic datasources never register.

2. **Web root** - The site root must be this repo (the folder that contains **`Application.cfc`** and **`index.cfm`**). If the server points at a subfolder, `Application.cfc` is ignored and no datasource is registered.

3. **Reinit** - After changing **`Application.cfc`**, restart the server or reinitialize the application so settings reload.

4. **Manual datasource (fallback)** - In **ColdFusion Administrator → Data & Services → Data Sources**, add **CFTrainingDSN**:
   - **Driver:** Apache Derby Embedded (or Other / JDBC if your build lists it differently).
   - **JDBC URL:** `jdbc:derby:C:/full/path/to/repo/resources/database/Derby/;create=true` (use your real path; forward slashes are fine on Windows).
   - **Class:** `org.apache.derby.jdbc.EmbeddedDriver`.
   - Leave username/password empty if not required.

Then run **`resources/database/buildDatabase.cfm`** once in the browser (or rely on **`ensureDatabase.cfm`** on the next request) to create tables.

Verified: JDBC datasource in **Application.cfc** per [Adobe ColdFusion - Developing Applications](https://guides.adobe.com/coldfusion/en/docs/develop-coldfusion-applications/using-application-cfc.html
