# Module 0: Welcome & Setup - Code samples

Samples are generated from `getModule0Data()` in `assets/js/modules-data.js`.

## Files by lesson

### `lesson-3/` - *Setting Up Your Development Environment*

| Slug | Tag | Script |
|------|-----|--------|
| Checking Your ColdFusion Environment (CF 2021+) | `checking-your-coldfusion-environment-cf-2021-tag.cfm` | `checking-your-coldfusion-environment-cf-2021-script.cfm` |
| Recommended Project Structure | `recommended-project-structure-tag.cfm` | `recommended-project-structure-script.cfm` |
| Displaying Server Information (CF 2021+) | `displaying-server-information-cf-2021-tag.cfm` | `displaying-server-information-cf-2021-script.cfm` |

### `lesson-4/` - *Server CLI: CFPM and CFSETUP*

| Slug | Tag | Script |
|------|-----|--------|
| CFPM and CFSETUP CLI reference (CF 2021+) | `cfpm-and-cfsetup-cli-reference-cf-2021-tag.cfm` | `cfpm-and-cfsetup-cli-reference-cf-2021-script.cfm` |

Regenerate after editing lesson code in JS:

`python scripts/generate_module_code_samples.py 0`

## Usage

1. Serve this repository as the ColdFusion web root (e.g. `box server start` from repo root).
2. Open a `.cfm` under `code-samples/module-0/lesson-*` or use **Run tag / Run script** on the module page.

## Prerequisites

- ColdFusion 2021, 2023, or 2025 (examples reference `Server.ColdFusion.*` where applicable and are labeled CF 2021+).
