# Getting Started with Cursor

## What is Cursor?

Cursor is a VS Code fork with AI built in at every level. Pro at $20/month. Trusted by Stripe, NVIDIA, Figma.

---

## Install

```bash
# Download from cursor.sh
# macOS:
brew install --cask cursor

# Or download .dmg / .exe / .AppImage from cursor.sh
```

---

## First Run

1. Open Cursor
2. Sign in with GitHub
3. Import VS Code settings/extensions (optional)
4. `File → Open Folder` → your project

---

## Index Your Codebase (Critical First Step)

```
Cursor Settings → Cursor Settings → Codebase Indexing → Enable
```

Wait for indexing, then:
```
@Codebase Where is user authentication?
@Codebase How are API routes organized?
@Codebase What database ORM is used?
```

---

## Three Modes

### Tab — Always Active
Code normally. `Tab` accepts. `Ctrl+→` accepts word by word.

### Cmd+K — Inline Edit
```
1. Select code
2. Cmd+K
3. "add error handling"
4. Tab → accept, Esc → reject
```

### Composer (Cmd+I) — Agent Mode
```
1. Cmd+I
2. Describe full task
3. Composer plans + executes across files
4. Review diffs → accept/reject
```

---

## Set Up .cursor/rules/

```bash
mkdir -p .cursor/rules
cat > .cursor/rules/general.mdc << 'EOF'
# Project Standards

## Language: TypeScript strict mode, no any

## Testing: Vitest + Playwright, 80% coverage minimum

## Style: Immutable patterns, functions <50 lines

## Commits: Conventional commits format
EOF
```

---

## Model Selection

```
Cursor Settings → Models → Configure

Tab Completion:    claude-haiku-4-5   (fast, cheap)
Inline Edit:       claude-sonnet-4-6  (good quality)
Composer/Agent:    claude-opus-4-6    (deep reasoning)
```

---

## Enable BugBot

```
Cursor Settings → BugBot → Enable
Connect GitHub/GitLab repository
```

Every PR gets automatic review.

---

## @Context Symbols

| Symbol | References |
|--------|-----------|
| `@Codebase` | Semantic search all files |
| `@File` | Specific file |
| `@Folder` | All files in folder |
| `@Docs` | Indexed docs |
| `@Web` | Live web |
| `@Git` | Git history |

---

## First Composer Task

```
Cmd+I

"Set up Next.js 15 with TypeScript, Tailwind CSS,
Prisma + PostgreSQL, Auth.js, Vitest, Playwright.
Create example files for each."
```

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Tab` | Accept completion |
| `Cmd+K` | Inline edit |
| `Cmd+I` | Open Composer |
| `Cmd+L` | Open Chat |
| `Esc` | Reject suggestion |

---

## Next Steps

- Read [FEATURES.md](FEATURES.md) — all features
- Read [WORKFLOWS.md](WORKFLOWS.md) — real workflows
- Create `.cursor/rules/` for your project
