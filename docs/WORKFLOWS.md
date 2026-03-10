# Cursor — Workflows

Real-world development workflows using Cursor's three modes.

---

## Workflow 1: Feature Development (TDD)

```
Plan → Tests first → Implement → Review → Commit
```

```
1. Open Composer (Cmd+I):
   "I need to add pagination to the products API.
    @Codebase First study how we handle existing endpoints,
    then:
    1. Write failing tests for pagination
    2. Implement cursor-based pagination
    3. Update the API docs"

2. Review the test files Composer creates
3. Review the implementation diffs
4. Accept changes
5. Cmd+I → "/commit"
```

---

## Workflow 2: Bug Investigation

```
Cmd+I (Chat mode):

"@Codebase @Terminal
Users report a 500 error when uploading images over 2MB.
Here's the error: [paste error]

1. Find where file uploads are handled
2. Trace the execution path
3. Find the root cause
4. Propose a fix with tests"
```

---

## Workflow 3: Codebase-Wide Refactor

```
Cmd+I (Composer mode):

"@Codebase @Folder src/
Refactor all direct database calls to use the Repository pattern:
1. Create a base Repository interface
2. Create concrete repos for each model
3. Update all services to use repos
4. Update existing tests
5. Add tests for new repositories"
```

---

## Workflow 4: PR Review with BugBot

**Automatic** (every PR):
- BugBot posts inline comments on GitHub
- One-click Autofix creates fix PRs
- No action needed from you

**Manual in Cursor:**
```
Cmd+L (Chat):
"@Git Review the changes in my current branch.
Focus on: security issues, missing error handling,
performance problems, and missing tests."
```

---

## Workflow 5: Code Documentation

```
1. Select file → Cmd+K:
   "Add JSDoc comments to all exported functions"

2. For a whole module:
   Cmd+I → "@Folder src/api/
   Generate comprehensive documentation:
   - JSDoc for all functions
   - README.md for the module
   - OpenAPI spec for all endpoints"
```

---

## Workflow 6: Dependency Upgrade

```
Cmd+I (Composer):
"@Web @Codebase
Upgrade React from v18 to v19:
1. Check @Web for React 19 breaking changes
2. Update package.json
3. Fix all breaking changes in our code
4. Run tests and fix failures
5. Create a migration notes file"
```

---

## Workflow 7: PLAN → EXECUTE (Cost Optimized)

```
Step 1: Switch to claude-opus-4-6 in model selector

Cmd+L:
"@Codebase Create a detailed implementation plan for
adding a real-time collaboration feature with CRDT.
Output as PLAN.md"

Step 2: Switch to claude-haiku-4-5

Cmd+I:
"@File PLAN.md
Follow this plan exactly and implement each step."
```

**Cost savings:** Plan once with Opus, execute many times with Haiku.

---

## Workflow 8: Analyze and Improve Performance

```
Cmd+I:
"@Codebase @Terminal
Analyze the performance of our application:
1. Run the lighthouse audit (npm run audit)
2. Identify top 5 performance bottlenecks
3. Fix the easiest 3 first
4. Create backlog items for the complex ones

Focus on: bundle size, render blocking, N+1 queries"
```

---

## Workflow 9: Generate a Test Suite

```
Select a file or module → Cmd+I:

"Write a comprehensive test suite for this module:
- Unit tests for every exported function
- Edge cases and error scenarios
- Mock external dependencies
- Achieve 90%+ coverage

Use Vitest. Follow AAA pattern (Arrange, Act, Assert)."
```

---

## Quick Combos

| Task | Mode | Time |
|------|------|------|
| Add type annotation | Inline (Cmd+K) | 5 sec |
| Fix a bug | Tab / Cmd+K | 30 sec |
| Add a function | Composer | 2 min |
| Build a feature | Composer | 10-30 min |
| Large refactor | Composer | 30-90 min |
