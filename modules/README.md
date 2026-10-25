# Module Files Structure

This directory contains individual module pages for the ColdFusion Training application. **Module number in the filename = curriculum id** (0–25), matching `getModulesData()` order.

## File Structure

```
modules/
├── _module-base.cfm
├── module-0.cfm             # Welcome & Setup
├── module-1.cfm             # What's New: Version Comparison
├── module-2.cfm             # Migration & Compatibility
├── module-3.cfm             # Language Fundamentals
├── module-4.cfm             # Web & Application Structure
├── module-5.cfm             # Data Connectivity & Manipulation
├── module-6.cfm             # File & Document Operations
├── module-7.cfm             # Cloud Storage Integration
├── module-8.cfm             # Security Fundamentals
├── module-9.cfm             # Object-Oriented Programming
├── module-10.cfm            # ColdFusion ORM (Hibernate)
├── module-11.cfm            # Asynchronous Programming & Event Gateways
├── module-12.cfm            # Quality Assurance & Debugging
├── module-13.cfm            # Advanced Topics
├── module-14.cfm … module-24.cfm   # AI track (see AI_OUTLINE_MAPPING.md)
└── module-25.cfm            # Projects & Labs
```

## How It Works

1. **Module ID Detection**: JavaScript reads the id from the filename (e.g. `module-3.cfm` → module id **3**).

2. **Base Template**: Each `module-N.cfm` includes `_module-base.cfm` for layout, scripts, Prism, and SCORM.

3. **Content Loading**: Lesson content comes from `assets/js/modules-data.js` via `getModuleData(moduleId)`.

## URL Structure

- Example: `/modules/module-3.cfm` - Language Fundamentals  
- Quizzes: `/quizzes/quiz-N.cfm` for the same id where a quiz exists.

Bookmarkable URLs without query parameters.
