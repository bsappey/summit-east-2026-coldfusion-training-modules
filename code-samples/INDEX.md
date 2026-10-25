# Code Samples Index

This directory contains executable code samples for all examples in the ColdFusion Training Platform.

## Regenerating samples from `modules-data.js`

For a given module number `N`, you can recreate `code-samples/module-N/**` from the lesson data (matches **Run tag** / **Run script** / **Run** in the UI):

```bash
python scripts/generate_module_code_samples.py N
```

To remove **orphan** `.cfm` files under `code-samples/module-N/` that no longer match `modules-data.js` (after fixing lesson mapping or retiring duplicates), use:

```bash
python scripts/generate_module_code_samples.py N --cleanup --dry-run   # list only
python scripts/generate_module_code_samples.py N --cleanup              # delete orphans
```

Requires Python 3. Dual-syntax blocks become `{slug}-tag.cfm` and `{slug}-script.cfm`; single blocks become `{slug}.cfm`. Slugs match `assets/js/module.js` (`codeTitle` → kebab-case, max 80 chars). Lesson index `M` is derived in `scripts/generate_module_code_samples.py` (supports modules **0**–**25** per `modules-data.js`).

## Overview

Every code example shown in the training materials should have a corresponding physical `.cfm` file that you can:
- Open directly in your IDE
- Modify and experiment with
- Run in your ColdFusion server
- Use as reference in your own projects

## Directory Structure

```
code-samples/
  module-0/
    lesson-0/
      checking-coldfusion-environment.cfm
      displaying-server-information.cfm
    lesson-1/
      ...
  module-3/
    lesson-0/
      ...
  ...
  module-14/
    ...
```

## File Naming Convention

- **Kebab-case**: All filenames use lowercase with hyphens
- **Descriptive names**: `basic-variable-assignment.cfm` not `example1.cfm`
- **Dual syntax**: When both tag and script versions exist (matches the training UI **Run tag** / **Run script** buttons):
  - `{slug}-tag.cfm` (tag syntax)
  - `{slug}-script.cfm` (script syntax)  
  The `{slug}` is derived from the lesson **code title** (kebab-case, see `renderCodeSample` in `assets/js/module.js`).

## File Format

Each `.cfm` file includes:

1. **File Header Comment Block**:
   - Module and lesson information
   - Learning objectives
   - Related concepts
   - Usage instructions
   - Best practices

2. **Well-Commented Code**:
   - Step-by-step explanations
   - Key concepts highlighted
   - Best practices noted
   - Common gotchas warned

3. **Runnable Output**:
   - HTML wrapper for easy viewing
   - Code displayed with syntax highlighting
   - Output shown below code
   - Standalone execution

## Usage

### Opening in IDE

1. Copy the file path from the "Path" button in the training
2. Open in VS Code, IntelliJ, or your preferred IDE
3. Edit and save
4. Run in your ColdFusion server

### Running Code Samples

**CommandBox:**
```bash
box server start
# Then access: http://127.0.0.1:8080/code-samples/module-X/lesson-Y/sample.cfm
```

**ColdFusion Server:**
```
http://127.0.0.1:8500/code-samples/module-X/lesson-Y/sample.cfm
```

### Modifying Samples

1. Open the file in your IDE
2. Make changes
3. Save the file
4. Refresh browser to see updated output
5. Experiment and learn!

## Module Index (ids match `getModulesData()`)

- [Module 0: Welcome & Setup](module-0/README.md)
- [Module 1: What's New: Version Comparison](module-1/README.md)
- [Module 2: Migration & Compatibility](module-2/README.md)
- [Module 3: Language Fundamentals](module-3/README.md)
- [Module 4: Web & Application Structure](module-4/README.md)
- [Module 5: Data Connectivity & Manipulation](module-5/README.md)
- [Module 6: File & Document Operations](module-6/README.md)
- [Module 7: Cloud Storage Integration](module-7/README.md)
- [Module 8: Security Fundamentals](module-8/README.md)
- [Module 9: Object-Oriented Programming](module-9/README.md)
- [Module 10: ColdFusion ORM (Hibernate)](module-10/README.md)
- [Module 11: Asynchronous Programming & Event Gateways](module-11/README.md)
- [Module 12: Quality Assurance & Debugging](module-12/README.md)
- [Module 13: Advanced Topics](module-13/README.md)
- [Module 14: Introduction to AI in ColdFusion](module-14/README.md)
- Modules **15–24**: AI track - see folders `module-15/` … `module-24/`
- Module 25: Projects & Labs - `module-25/` (see lesson folders)

## Best Practices

1. **Always test in your target ColdFusion version**
2. **Modify and experiment** - that's how you learn!
3. **Use as templates** for your own projects
4. **Follow the comments** - they explain important concepts
5. **Check version badges** - ensure compatibility

## Contributing

If you find issues or want to improve code samples:
1. Check the file structure matches the lesson
2. Ensure code is valid and runnable
3. Verify comments are accurate
4. Test in multiple ColdFusion versions

---

**Last Updated**: 2025
