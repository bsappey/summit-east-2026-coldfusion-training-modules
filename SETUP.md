# Setup Guide - ColdFusion Training Platform

## Quick start with CommandBox (recommended)

You do **not** need to copy files elsewhere: CommandBox uses **this project folder as the web root** when you start the server from here.

1. **Install [CommandBox](https://www.ortussolutions.com/products/commandbox)** if needed.

2. **Open a terminal in this repository root** (the folder that contains `index.cfm` and `box.json`).

3. **Start the embedded server** (uses **`box.json`**: port **8080**, engine **adobe@2025** by default):
   ```bash
   box server start
   ```
   Port **8080** is shared with the CFSummit workshop CommandBox server (`ColdFusion Summit 2026 Workshop` in that repo's `server.json`). Stop the other one first, or this server will miss 8080 and bind a random port:
   ```bash
   box server stop "ColdFusion Summit 2026 Workshop"
   box server start
   ```
   The installed ColdFusion service on port **8500** is a different process. It can stay running.
   To use another Adobe version (one at a time), for example:
   ```bash
   box server stop
   box server start cfengine=adobe@2023
   ```

4. **Open the app** at the URL CommandBox prints. **`server.json`** requests **port 8080**; if that port is busy, CommandBox may pick another (e.g. **65113**) - use whatever URL works. For smoke tests, pass that base URL (e.g. `-BaseUrls @('http://127.0.0.1:65113')`). **From the CommandBox prompt**, you cannot run `.ps1` files directly; use **`!`** to shell out (see **`runtime-checks/README.md`**) or run **`run-sample-checks.cmd`** with **`!`**.

5. **Optional - runtime checks** (PowerShell, from the `runtime-checks` folder; use your real port/URL):
   ```powershell
   cd runtime-checks
   .\Invoke-SmokeTests.ps1 -BaseUrls @('http://127.0.0.1:8080')
   .\Invoke-SampleChecks.ps1 -SingleBaseUrl 'http://127.0.0.1:8080' -SingleEngineId cf2025 -SkipFlaky
   .\Invoke-AllSampleChecks.ps1 -BaseUrl 'http://127.0.0.1:8080'
   ```
   **Module-by-module HTTP smoke** (home + each `modules/module-N.cfm` + `quizzes/quiz-N.cfm` + all `code-samples/module-N/**/*.cfm` in a range): from repo root, `.\scripts\Verify-ModuleHttpSmoke.ps1 -BaseUrl 'http://127.0.0.1:8080' -StartModule 0 -EndModule 23`.

**AI track samples (modules 14–24):** Without a provider API key, most `code-samples` under those modules return a short **configuration placeholder** (HTTP 200) from `Application.cfc` so smoke tests do not fail. To run live `ChatModel` / Agent / vector / MCP examples:

1. Install the ColdFusion **ai** package (CFPM) per Adobe for your build.
2. Paste the day-of key in source. Open `config/local-ai-secrets.cfm` and replace `paste-the-key-here` on `application.apiKey`. Save, then refresh the sample page. The file in git keeps the placeholder. Do not put the key in `Application.cfc`.
   Optional instead of the file: environment variable `CF_TRAINING_OPENAI_API_KEY`, then restart the server.
3. If a sample was already open before the key existed, refresh that page. A server restart is only required when you used the environment variable.

Whitelisted samples (`installing-ai-package`, `tool-wrapping-an-api`, `word-based-chunking`) still execute the `.cfm` body without a key.

**simpleRAG / documentService paths:** ColdFusion only loads files from directories listed in `documentaccesspaths` in the engine’s `WEB-INF/cfusion/lib/pathfilter.json`. For CommandBox, that file lives under `~/.CommandBox/server/<server-id>/.../lib/pathfilter.json`. Add your repo’s `code-samples/**` (then restart CF). Classroom fixtures are under `code-samples/module-18/lesson-2/docs/` (and sibling lesson `docs/` folders).

**Module 21 MCP classroom path:** Run the MCPServer sample first (or let later samples create `application.mcpServer`). Local HTTP demos use `code-samples/module-21/lesson-1/mcp-endpoint.cfm` (`handleRequest()` with no args on this CF build) plus `SupportTool.cfc` (`access="remote"`). Round-trip `tools/list` / `tools/call` via `cfhttp` to that endpoint—`MCPClient` HTTP transport rejects localhost/private IPs (SSRF URL filter); use a public HTTPS MCP host with `MCPClient` in production. STDIO remains config-only unless you run a local MCP process.

**Cheap live smoke (gpt-4o-mini):** after the key is set, hit a few Run links or:

```powershell
.\runtime-checks\Invoke-AiLiveSmoke.ps1 -BaseUrl 'http://127.0.0.1:8080'
```
   **`Invoke-AllSampleChecks.ps1`** hits **every** `code-samples/**/*.cfm`. See **`docs/RUNTIME-VERSION-CHECKS.md`**. Use **`-SingleEngineId cf2023`** or **cf2021** for curated manifest checks when that matches your engine.

Edit **`box.json`** to change **port** or default **cfengine**. See [CommandBox server docs](https://commandbox.ortusbooks.com/embedded-server/server-management).

**Wrong engine (e.g. 2023 instead of 2025)?** CommandBox also reads **`server.json`** in the project root; it is saved when the server starts and can override other settings. This repo’s **`server.json`** is set to **`adobe@2025`**. After editing, run `box server stop` then `box server start` (or `box server forget` and start fresh if the engine sticks).

---

## Using an installed ColdFusion server (no CommandBox)

1. Point the site **document root** at this repository folder (the directory that contains `index.cfm`), **or** copy the project into the server’s `wwwroot` so `index.cfm` is at the web root.

2. Access the training (port depends on your install, often **8500**):
   ```
   http://127.0.0.1:8500/index.cfm
   ```

---

## Using Docker (three versions side by side)

For **CF 2021 + 2023 + 2025** in parallel with a shared repo mount, see **`docs/RUNTIME-VERSION-CHECKS.md`** and **`runtime-checks/docker-compose.yml`**.

---

## File structure

```
coldfusion_training/
├── box.json                   # CommandBox: port, cfengine (optional)
├── index.cfm                  # Main landing page
├── modules/                   # module-0.cfm … module-23.cfm
├── assets/js/modules-data.js  # Course content (source of truth)
├── runtime-checks/            # Smoke tests & sample manifest (PowerShell)
└── ...
```

---

## Configuration

### Training datasource (optional, for SQL code samples)

The UI still uses **localStorage** for progress. For **`code-samples`** that run **`cfquery`** / **`queryExecute`**, this repo includes a root **`Application.cfc`** that registers **Apache Derby Embedded** as datasource **`CFTrainingDSN`** (files under **`resources/database/Derby/`**, gitignored). Tables and seed data are created on first application start via **`resources/database/buildDatabase.cfm`**. See **`resources/database/README.md`**.

If you remove **`Application.cfc`** or do not start from the repo root, those samples will fail until you define the same datasource in Administrator.

---

## Adding content

### Module lessons

Edit **`assets/js/modules-data.js`** - see **`HOW-TO-CREATE-MODULES.md`**.

### Quiz questions

- **`assets/js/quiz.js`** - modules **1** and **13**
- **`assets/js/quiz-data.js`** - other modules

---

## Version testing

| Approach | Notes |
|----------|--------|
| **CommandBox** | Change `cfengine` when starting the server (`adobe@2021`, `adobe@2023`, `adobe@2025`). One engine at a time. |
| **Docker** | **`docs/RUNTIME-VERSION-CHECKS.md`** - three containers on ports **8500 / 8503 / 8505**. |
| **Installed CF** | Multiple installs or VMs, or repeat tests after changing the active version. |

---

## Troubleshooting

### CommandBox: `UnsupportedClassVersionError` / “class file version 61.0” vs “55.0”

**Cause:** **ColdFusion 2025** needs **Java 17** (class file **61**). CommandBox was starting the **server JVM** with **Java 11** (**55**), which cannot load CF 2025’s servlets.

**Fix:** This repo sets **`jvm.javaVersion": "openjdk17"`** in **`server.json`** (and **`box.json`**) so CommandBox downloads/uses a **Java 17** runtime for the embedded server (the CommandBox CLI can still be on Java 11). Then:

```bash
box server stop
box server start
```

First start may download OpenJDK 17. To point at an existing JDK 17 instead, use **`jvm.javaHome`** per [CommandBox: Custom Java version](https://commandbox.ortusbooks.com/embedded-server/configuring-your-server/custom-java-version).

### Pages not loading

- Confirm the URL matches CommandBox output or your CF connector (port, HTTPS).
- Ensure the server **web root** is this repo (so `index.cfm` resolves).

### Code not highlighting

- Check Prism / `language-coldfusion` in **`modules/_module-base.cfm`** and browser Network tab.

### Progress not saving

- Allow **localStorage** in the browser.

### Module data not loading

- Confirm **`assets/js/modules-data.js`** loads before **`module.js`** / **`app.js`** (see `_module-base.cfm`).

---

## Support

- **ColdFusion:** [Adobe ColdFusion User Guide](https://guides.adobe.com/coldfusion/en/docs/develop-coldfusion-applications/coldfusion-developers-user-guide.html
- **CommandBox:** [commandbox.ortusbooks.com](https://commandbox.ortusbooks.com/)
- **Runtime checks:** **`docs/RUNTIME-VERSION-CHECKS.md`**
