# 🔮 AI-ASSISTANT-CURSOR

![Cursor](https://img.shields.io/badge/Cursor-Anysphere-8B5CF6?style=for-the-badge&logo=cursor)
![Features](https://img.shields.io/badge/Release-April_2026-22C55E?style=for-the-badge)
![Status](https://img.shields.io/badge/Ecosystem-Active-blue?style=for-the-badge)
![Intelligence](https://img.shields.io/badge/Intelligence-Composer_2.0-8B5CF6?style=for-the-badge)

> **"The IDE that doesn't just autocomplete — it plans and executes."**

This repository is a production-grade implementation of the **Cursor IDE** ecosystem. It provides the rules, configurations, and specialized agents required to leverage Cursor's advanced agentic capabilities: **Composer 2.0**, **Background Agents**, and **BugBot**.

---

## 🏛️ Ecosystem Overview

| Capability | Feature | Description |
| :--- | :--- | :--- |
| **Composer 2** | `Cmd+I` | Multi-file, architectural-level agentic editing. |
| **Background Agents** | `Cloud Execution` | Asynchronous, parallel task execution in sandboxed Ubuntu environments. |
| **BugBot** | `Automated Review` | AI-powered PR reviewer that enforces project-specific `.cursorrules`. |
| **Rules** | `.cursorrules` | Project-wide context injection and behavioral constraints. |

---

## 🚀 Quick Start

1. **Install Cursor**: [cursor.com](https://cursor.com) (Ensure you are on version 0.45+).
2. **Apply Rules**: Copy the provided [.cursorrules](.cursorrules) to your root directory.
3. **Initialize Setup**: Run `./scripts/setup.sh` to configure MCP servers.
4. **Trigger Composer**: Press `Cmd+I` and describe your feature.

---

## 📂 Repository Structure

- [**agents/**](file:///Users/mkazi/ALL-REPO/4-AI-ASSISTANT/AI-ASSISTANT-CURSOR/agents) — specialized profiles for backend, test-writing, and rapid prototyping.
- [**skills/**](file:///Users/mkazi/ALL-REPO/4-AI-ASSISTANT/AI-ASSISTANT-CURSOR/skills) — logic for creating new rules, migrating to skills, and updating settings.
- [**configs/**](file:///Users/mkazi/ALL-REPO/4-AI-ASSISTANT/AI-ASSISTANT-CURSOR/configs) — `mcp.json` templates for seamless tool integration.
- [**examples/**](file:///Users/mkazi/ALL-REPO/4-AI-ASSISTANT/AI-ASSISTANT-CURSOR/examples) — a library of high-quality `.cursorrules` for different stacks.

---

## 🎯 Strategic Workflows

### 1. The "Background Refactor"
Dispatch a **Background Agent** to handle low-level refactors or unit tests while you continue building high-level features in the main thread.
- **Trigger**: "Refactor this module in the background"
- **Result**: A pull request ready for review.

### 2. BugBot CI Enforcement
BugBot acts as your 24/7 reviewer. It uses the rules defined in this repo to ensure no PR merges without adhering to your specific architectural patterns.

### 3. Composer-First Prototyping
Use Composer to scaffold entire features (models, controllers, routes, views) in one prompt by providing the architecture in `CLAUDE.md`.

---

## 🛠️ Configuration

Configure your **Background Agents** in `configs/agents-config.json`:
```json
{
  "defaultEnv": "ubuntu-24.04-stable",
  "concurrencyLimit": 5,
  "autoSubmitPR": true
}
```

---

## 📜 Resources
- [Official Cursor Docs](https://docs.cursor.com)
- [Cursor Community Forum](https://forum.cursor.com)
- [Best .cursorrules Catalog](docs/SKILL_ANATOMY.md)

---
*Maintained by the mk-knight23 collective. Last updated: April 2026.*

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

## Security

This project follows security best practices:
- No hardcoded credentials
- Dependency scanning enabled
- Security headers configured
- Regular security audits performed
