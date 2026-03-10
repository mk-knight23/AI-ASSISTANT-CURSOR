# Cursor Rules Example
# Place .mdc files in .cursor/rules/ of your project
# Each file provides persistent AI context for that project

## File Format (.cursor/rules/your-rule.mdc)

```
---
description: Brief description of what this rule does
globs: **/*.ts        # File pattern (omit for always-apply)
alwaysApply: false    # true = applies every session
---

# Rule Title

Your rule content here...
```

## Example Rules

### 1. TypeScript Standards
**File**: `.cursor/rules/typescript-standards.mdc`
```
---
description: TypeScript coding standards
globs: **/*.ts
alwaysApply: false
---
# TypeScript Standards
- Use strict mode
- No `any` types
- Prefer interfaces over types for objects
- Always handle Promise rejections
```

### 2. Git Commit Format
**File**: `.cursor/rules/git-commits.mdc`
```
---
description: Conventional commit format
alwaysApply: true
---
# Commit Message Format
feat: new feature
fix: bug fix
refactor: code restructure
docs: documentation
test: tests
chore: maintenance
```

### 3. Project Architecture
**File**: `.cursor/rules/architecture.mdc`
```
---
description: Project architecture guidelines
alwaysApply: true
---
# Architecture
- Feature-based folder structure
- Repository pattern for data access
- Error handling at every boundary
- Immutable data patterns
```

## Installation
Cursor reads all `.mdc` files in `.cursor/rules/` automatically.
Personal rules: `~/.cursor/rules/` (applies to all projects)
