#!/usr/bin/env bash
# =============================================================================
# Cursor Setup Script
# Sets up .cursor/rules/, VS Code settings, and BugBot
# Run: chmod +x setup.sh && ./setup.sh
# =============================================================================

set -euo pipefail

BLUE='\033[0;34m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
log()  { echo -e "${BLUE}[cursor-setup]${NC} $*"; }
ok()   { echo -e "${GREEN}[✓]${NC} $*"; }
warn() { echo -e "${YELLOW}[!]${NC} $*"; }

log "Cursor Project Setup"

# Install Cursor extensions
if command -v cursor >/dev/null 2>&1; then
  log "Installing VS Code extensions..."
  cursor --install-extension esbenp.prettier-vscode 2>/dev/null && ok "Prettier" || true
  cursor --install-extension dbaeumer.vscode-eslint 2>/dev/null && ok "ESLint" || true
  cursor --install-extension eamodio.gitlens 2>/dev/null && ok "GitLens" || true
else
  warn "Cursor not in PATH. Download from https://cursor.sh"
fi

# .cursor/rules/
log "Creating .cursor/rules/..."
mkdir -p .cursor/rules

cat > .cursor/rules/general.mdc << 'EOF'
# Project Standards

- TypeScript strict mode, no `any`
- Immutable patterns: return new, never mutate
- Functions under 50 lines
- Error handling required at all boundaries
- Conventional commits: type(scope): description

## Testing
- 80%+ coverage minimum
- Unit tests for all functions
- Integration tests for all API endpoints

## Code Review
- No hardcoded secrets
- All async paths have error handling
- No `console.log` in production code
EOF
ok "Created .cursor/rules/general.mdc"

# Language-specific rules
if [[ -f package.json ]] && grep -q '"react"' package.json 2>/dev/null; then
  cat > .cursor/rules/react.mdc << 'EOF'
# React Rules
- Functional components only
- Custom hooks for reusable logic
- No prop drilling: use Context
- useCallback for child event handlers
- useMemo for expensive computations
EOF
  ok "Created React rules"
fi

# VS Code settings
mkdir -p .vscode
if [[ ! -f .vscode/settings.json ]]; then
  cat > .vscode/settings.json << 'EOF'
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  }
}
EOF
  ok "Created .vscode/settings.json"
fi

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  Cursor Setup Complete!${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "Manual steps in Cursor:"
echo "  1. Settings → Codebase Indexing → Enable"
echo "  2. Model: Tab=haiku, Cmd+K=sonnet, Composer=opus"
echo "  3. Settings → BugBot → Enable → Connect GitHub"
echo ""
echo "Shortcuts: Tab=accept, Cmd+K=edit, Cmd+I=composer, Cmd+L=chat"
