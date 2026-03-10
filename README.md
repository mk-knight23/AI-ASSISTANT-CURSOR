# Cursor AI — The Most Powerful AI IDE Showcase

![Cursor](https://img.shields.io/badge/Cursor-Anysphere-8B5CF6?style=for-the-badge)
![Users](https://img.shields.io/badge/Used_By-Fortune_500-22C55E?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-2.6_March_2026-0F172A?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-VS_Code_Based-blue?style=for-the-badge)

> **"Adoption went from single digits to over 80% — all the best builders were using Cursor."** — Diana Hu, Y Combinator

Cursor is the AI IDE that changed how the world's best developers work. Built on VS Code, it combines predictive Tab autocomplete, natural language inline edits (Cmd+K), and full autonomous agents (Composer) — trusted by 40,000+ Stripe engineers, all of NVIDIA, Figma, Adobe, Ramp, and OpenAI.

---

## Table of Contents

- [What is Cursor?](#what-is-cursor)
- [Three Interaction Modes](#three-interaction-modes)
- [Key Features](#key-features)
- [How I Use It](#how-i-use-it-personally)
- [Quick Start](#quick-start)
- [Rules & Configuration](#rules--configuration)
- [Model Selection Guide](#model-selection-guide)
- [Workflows](#workflows)
- [Resources](#resources)

---

## What is Cursor?

Cursor is a **VS Code-based AI IDE** that doesn't just autocomplete — it thinks. Three distinct interaction modes cover every coding scenario from micro-edits to full feature builds:

1. **Tab** — Predict your next action with striking speed and precision
2. **Cmd+K** — Make targeted inline edits with natural language
3. **Composer/Agent** — Full autonomous task execution

Cursor understands your entire codebase semantically, reviews your PRs (BugBot), runs agents in the cloud (background autonomous tasks), and integrates with Slack and GitHub.

---

## Three Interaction Modes

### ⌨️ Tab — Predictive Autocomplete
Not just word completion — **action prediction**:
- Predicts your next edit based on context
- Multi-line completions
- Import suggestions
- Refactor predictions
- Speed: sub-50ms response

```typescript
// Type: "function get"
// Tab predicts: getUserById(id: string): Promise<User>
// Tab again: adds the full implementation
```

### ✏️ Cmd+K — Inline Edit
Natural language targeted edits without leaving the editor:
```
# Select a function, press Cmd+K, type:
"refactor this to use async/await instead of callbacks"
"add input validation with zod schema"
"make this function handle the edge case where user is null"
```

### 🤖 Composer / Agent Mode
Full autonomous task execution:
```
"Build a real-time collaboration feature with WebSocket support,
add tests, update the API docs, and create a migration"
```
The agent:
- Plans the implementation
- Writes code across multiple files
- Runs tests
- Fixes failures
- Updates docs
- Summarizes what it did

---

## Key Features

### 🐛 BugBot — Automated PR Review
```
leerob: @cursor can you review this PR?
cursorbot: Found 3 issues:
  - Bug: Function returns object instead of string (line 329)
  - Missing null check in getUserById (line 45)
  - Performance: N+1 query in getTeamMembers (line 89)
[Fix in Cursor] [Fix in Web]
```

### ☁️ Cloud Agents (Background Tasks)
Agents run autonomously in background while you work on other things:
```
cursor.com/agent
└── Acme Research Dashboard (14m 22s)
    ├── Explored 12 files, 4 searches
    ├── Built dashboard with Snowflake data
    └── Deployed to staging via Vercel
```

### 📚 Codebase Indexing
Semantic understanding of your entire repo:
```
"Where are these menu label colors defined?"
→ Grepping... found in /src/theme/colors.ts:L34
```

### 🔌 MCP Apps & Marketplace
```
# March 2026: MCP Apps and Team Marketplaces
# Install tools directly from Cursor's marketplace
```

### 🤝 Slack Integration
```
# In your #engineering Slack channel
@cursor can you fix the changelog linking?
→ Cursor creates PR, fixes issue, posts link
```

### 🔄 Automations (March 2026)
Trigger Cursor actions on events — git push, file save, PR open.

---

## How I Use It Personally

### My Daily Workflow
```bash
# Morning: review overnight agent work
# BugBot already reviewed last night's PR

# Feature work: Composer for complex tasks
# Tab for everything else

# My model routing:
# PLAN:    Opus 4.6 — architecture, design, risks
# EXECUTE: Sonnet 4.6 (auto) — implementation, edits
# After premium limit: drop to AUTO (cheaper models)
```

### My .cursorrules Template
```
You are working on [Project Name], a [description].

Stack: TypeScript, React, Next.js, Prisma, PostgreSQL

Rules:
- Always use TypeScript strict mode
- Use Zod for input validation
- Write tests for every new function
- Use conventional commits
- Never modify package.json without asking
- Prefer composition over inheritance
```

### Cost Strategy
- $20/month Cursor Pro subscription
- Use SOTA models (Opus) for hard problems
- Drop to AUTO when hitting premium limits
- Cloud agents for overnight work (no token cost while sleeping)

---

## Quick Start

### Installation
```bash
# Download Cursor from cursor.com
# It's a VS Code fork — all extensions work

# Or via CLI (if available):
# curl -fsSL https://cursor.com/install.sh | sh
```

### Setup
```bash
# 1. Import VS Code settings & extensions (automatic)
# 2. Sign in with GitHub
# 3. Enable Agent mode in settings
# 4. Add API keys (optional, or use Cursor Pro)
```

### First Composer Session
```
1. Open Command Palette: Cmd+Shift+P
2. "New Composer Session" or Cmd+I
3. Type your task
4. Review the plan
5. Approve and let it work
```

### Key Shortcuts
```
Tab               — Accept autocomplete suggestion
Cmd+K             — Inline edit with AI
Cmd+I / Cmd+L     — Open Composer/Chat
Cmd+Shift+J       — Open Composer history
@file             — Reference specific file in chat
@codebase         — Search entire codebase
@web              — Search the web
```

---

## Rules & Configuration

### .cursor/rules/ Directory
Project-specific AI instructions:
```
.cursor/
└── rules/
    ├── general.md       # Base rules for all files
    ├── typescript.md    # TypeScript-specific rules
    ├── testing.md       # Testing requirements
    └── api.md           # API design rules
```

### Example Rule Files
See `examples/.cursorrules` for full templates.

---

## Model Selection Guide

| Task | Recommended Model | Why |
|------|------------------|-----|
| Architecture planning | Opus 4.6 | Deepest reasoning |
| Complex feature | Sonnet 4.6 | Best coding model |
| Quick edits | Gemini 3 Flash | Fast + cheap |
| Large context | Gemini 3 Pro | 1M token window |
| Autocomplete | Cursor Tab | Trained specifically |

### The PLAN → EXECUTE Pattern
```
Step 1: Opus 4.6 — analyze, plan, identify risks
Step 2: Sonnet 4.6 — implement the plan
Step 3: Cursor Tab — fill in details
Step 4: BugBot — review the result
```

---

## Workflows

| Workflow | File | Description |
|----------|------|-------------|
| Feature Dev | `workflows/feature-with-composer.md` | Full Composer workflow |
| PR Review | `workflows/pr-review.md` | BugBot + manual review |
| Parallel Agents | `workflows/parallel-agents.md` | Multiple cloud agents |

---

## Project Structure

```
AI-ASSISTANT-CURSOR/
├── README.md
├── index.html
├── docs/
│   ├── FEATURES.md
│   ├── GETTING_STARTED.md
│   ├── WORKFLOWS.md
│   ├── RULES_GUIDE.md
│   └── MODEL_GUIDE.md
├── scripts/
│   ├── setup-cursor.sh
│   └── cursor-workflow.sh
├── workflows/
│   ├── feature-with-composer.md
│   ├── pr-review.md
│   └── parallel-agents.md
├── examples/
│   ├── .cursorrules
│   └── composer-prompts.md
└── configs/
    └── .gitignore
```

---

## Resources

- [Official Website](https://cursor.com)
- [Changelog](https://cursor.com/changelog)
- [Research](https://cursor.com/research)
- [Enterprise](https://cursor.com/enterprise)
- [Cursor in JetBrains](https://cursor.com/jetbrains)

---

*Cursor — the IDE that made me 3x more productive. Built by mk-knight23, 2026.*
