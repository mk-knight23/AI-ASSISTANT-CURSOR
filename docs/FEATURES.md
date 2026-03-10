# Cursor — Features Deep Dive

> Cursor — AI-first code editor. Trusted by engineers at Stripe, NVIDIA, Figma, and 100,000+ teams.

## Three Modes of Operation

Cursor gives you three ways to interact with AI, each optimized for different tasks:

```
┌────────────────────────────────────────────────────┐
│                    CURSOR                          │
├──────────────────┬──────────────┬──────────────────┤
│   TAB            │   CMD+K      │   COMPOSER       │
│   (Predictive)   │   (Inline)   │   (Autonomous)   │
│                  │              │                  │
│ Code completion  │ Inline edits │ Full agent mode  │
│ Next token       │ Refactors    │ Multi-file       │
│ Ghost text       │ Precise edits│ Plans & executes │
└──────────────────┴──────────────┴──────────────────┘
```

---

## Feature 1: Tab Mode (Predictive Completion)

Cursor Tab goes beyond autocomplete — it predicts **what you'll do next**:

- Predicts cursor movement, not just code text
- Multi-line completions across function bodies
- Context from your entire codebase (not just current file)
- Learns your patterns over time
- **Partial accept:** `Ctrl+→` accepts word by word

**Pro tip:** Tab is optimized for speed. Use a fast model like `claude-haiku-4-5` for Tab to minimize latency.

---

## Feature 2: Cmd+K Inline Edit

Select any code block, press `Cmd+K`, describe what you want:

```python
# Before: select this function, press Cmd+K
# "add type annotations and docstring"
def calculate(x, y):
    return x + y

# After:
def calculate(x: float, y: float) -> float:
    """Calculate the sum of two numbers.

    Args:
        x: First operand
        y: Second operand

    Returns:
        Sum of x and y
    """
    return x + y
```

**Diff view:** Shows exactly what changed. Accept with `Tab`, reject with `Esc`.

---

## Feature 3: Composer / Agent Mode

Full autonomous coding agent:

- `Cmd+I` to open Composer
- Works across multiple files
- Plans the approach before writing
- Runs terminal commands
- Reads web documentation
- Self-corrects errors automatically

**Example Composer prompt:**
```
Add a real-time search feature to the product catalog:
- Debounced input (300ms)
- Search by name and description
- Highlight matching text
- Show "no results" state
- Add loading spinner
- Write tests
```

Composer handles all of it autonomously.

---

## Feature 4: Codebase Indexing

Cursor indexes your entire codebase for semantic search:

- `@Codebase` — search across all files
- `@Docs` — search indexed documentation
- `@Web` — search the internet
- `@File` — reference specific files
- `@Folder` — reference entire directories

**Index is updated automatically** when files change. Ask questions like:
```
@Codebase Where is the user authentication logic?
@Codebase How are database connections managed?
```

---

## Feature 5: .cursor/rules/ Configuration

Project-specific AI behavior rules:

```
.cursor/rules/
├── general.mdc      # General coding standards
├── react.mdc        # React-specific rules
├── api.mdc          # API design guidelines
└── testing.mdc      # Testing requirements
```

**Example `.cursor/rules/general.mdc`:**
```markdown
# Project Rules

- Always use TypeScript strict mode
- Prefer functional components over class components
- Use Zod for input validation
- Write tests for every new function
- No `any` types allowed
- Use conventional commits format
```

---

## Feature 6: BugBot

Automatic PR review integration:

- Scans every PR on GitHub/GitLab
- Posts inline comments on issues found
- Checks for: bugs, security issues, performance problems
- **Autofix:** Can create fix PRs automatically
- Integrates with your GitHub Actions pipeline

---

## Feature 7: Cloud Agents

Long-running background agents:

- Assign tasks that run while you work on other things
- Agent has access to your codebase
- Runs in Cursor's cloud infrastructure
- Results appear as completed diffs to review
- **Use for:** Large refactors, codebase migrations, bulk test writing

---

## Feature 8: MCP Apps Marketplace

Cursor has an in-app marketplace for MCP servers:

- Install tools with one click
- Verified by Cursor team
- Categories: databases, APIs, browsers, cloud, dev tools
- Popular: Supabase, Vercel, Stripe, Linear, Notion

---

## Feature 9: Model Selection Strategy

```
PLANNING PHASE     → claude-opus-4-6  (deepest reasoning)
                         ↓
IMPLEMENTATION     → claude-sonnet-4-6 (best coding)
                         ↓
QUICK EDITS        → claude-haiku-4-5  (fastest, cheapest)
```

Configure per-task in Cursor's model selector.

---

## Company Usage Examples

| Company | How They Use Cursor |
|---------|-------------------|
| Stripe | Payment infrastructure code generation |
| NVIDIA | GPU optimization and CUDA development |
| Figma | Design tool feature development |
| Shopify | E-commerce platform scaling |
| Vercel | Deployment infrastructure |

---

## Performance Tips

1. Index your codebase immediately after setup
2. Create detailed `.cursor/rules/` for your project
3. Use `@Codebase` to ground responses in your code
4. Tab mode for speed, Composer for complex tasks
5. BugBot on all PRs — catches issues before review
