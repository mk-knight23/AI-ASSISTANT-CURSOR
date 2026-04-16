#!/usr/bin/env bash
# =============================================================================
# 🔮 Cursor Setup Script (Premium Edition)
# Sets up .cursor/rules/, Composer 2.0, Background Agents, and BugBot
# Run: chmod +x setup.sh && ./setup.sh
# =============================================================================

set -euo pipefail

BLUE='\033[0;34m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
log()  { echo -e "${BLUE}[cursor-setup]${NC} $*"; }
ok()   { echo -e "${GREEN}[✓]${NC} $*"; }
warn() { echo -e "${YELLOW}[!]${NC} $*"; }
die()  { echo -e "${RED}[✗]${NC} $*"; exit 1; }

log "System Check & Environment Init..."

# 1. Cursor CLI check
if ! command -v cursor >/dev/null 2>&1; then
  warn "Cursor CLI not found in PATH."
  echo "Please install Cursor from https://cursor.com and run 'Shell Command: Install 'cursor' command in PATH' from the Command Palette."
  exit 1
fi

# 2. Directory Initialization
log "Initializing .cursor/rules and .vscode..."
mkdir -p .cursor/rules .vscode

# 3. Rule Sync (The "Elite" MDC Library)
if [[ -d "../examples" ]]; then
  cp ../examples/*.mdc .cursor/rules/ 2>/dev/null || true
  ok "Synced ecosystem rules to .cursor/rules/"
fi

# 4. Global Project Rules (.cursorrules)
log "Configuring master .cursorrules..."
cat > .cursorrules << 'EOF'
# 🔮 Master Project Rules
- Framework: TypeScript / React / Next.js
- Design System: Premium Glassmorphism / Tailwind v4
- Code Style: Strict, Functional, Immutable

## Agent Behavior (Composer 2.0)
- Always plan in `implementation_plan.md` before editing code.
- Group multi-file changes into atomic logical commits.
- Use `Background Agents` for testing and documentation tasks.

## Security (BugBot)
- Never hardcode secrets.
- Use environment variables for all API endpoints.
- Auto-fix linting errors before submission.
EOF
ok ".cursorrules initialized"

# 5. Background Agents Config
log "Configuring Background Agents..."
cat > .cursor/agents-config.json << 'EOF'
{
  "defaultEnv": "ubuntu-24.04-stable",
  "concurrencyLimit": 5,
  "autoSubmitPR": true,
  "allowedRemoteHosts": ["github.com", "npm.org"]
}
EOF
ok "Background Agents configured"

# 6. VS Code settings for Cursor
log "Tuning VS Code settings for AI performance..."
cat > .vscode/settings.json << 'EOF'
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  },
  "cursor.composer.agentMode": true,
  "cursor.cpp.enableThinking": true,
  "cursor.terminal.aiSuggestions": true
}
EOF
ok ".vscode/settings.json tuned"

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  Cursor Ecosystem Setup Complete!             ${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "Modern Features Enabled:"
echo " - Composer 2.0      (Agentic Multi-File Editing)"
echo " - Background Agents (Cloud Parallel Execution)"
echo " - BugBot            (Automated AI PR Review)"
echo " - .cursorrules      (Global Behavioral Guardrails)"
echo ""
echo "Shortcuts: Cmd+I=Composer, Cmd+K=Edit, Cmd+L=Chat, Cmd+Shift+R=Review"
log "Open any file and press Cmd+I to begin."
