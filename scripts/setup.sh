#!/bin/bash
# Cursor Setup Script
# Run: chmod +x setup.sh && ./setup.sh

set -e
echo "🚀 Setting up Cursor..."

# 1. Install Cursor
echo "📦 Cursor must be downloaded from https://cursor.sh"
echo "   After installation, come back and run this script again"
echo ""

# 2. Install skills from Antigravity Awesome Skills
echo "🎯 Installing Antigravity Awesome Skills for Cursor..."
npx antigravity-awesome-skills

# 3. Copy cursor-specific skills to ~/.cursor/skills/
echo "📂 Setting up cursor skills..."
mkdir -p ~/.cursor/skills
for f in skills/*.md; do
  cp "$f" ~/.cursor/skills/ 2>/dev/null || true
done

# 4. Set up MCP config
echo "🔌 Copying MCP config..."
mkdir -p ~/.cursor
cp configs/mcp.json ~/.cursor/mcp.json
echo "⚠️  Edit ~/.cursor/mcp.json and replace YOUR_*_TOKEN_HERE with real values"

# 5. Set up project rules
echo "📋 Setting up Cursor rules template..."
mkdir -p .cursor/rules
cat > .cursor/rules/project-standards.mdc << 'EOF'
---
description: Project coding standards
alwaysApply: true
---
# Project Standards
- TypeScript strict mode
- Conventional commits
- Test coverage 80%+
- Immutable data patterns
- No hardcoded secrets
EOF

echo ""
echo "✨ Cursor is ready!"
echo ""
echo "Next steps:"
echo "  1. Download Cursor at https://cursor.sh"
echo "  2. Open your project folder in Cursor"
echo "  3. Review .cursor/rules/ for AI context"
echo "  4. Use Cmd+K for inline edits"
echo "  5. Use Cmd+L for chat"
echo "  6. Use Cmd+Shift+I for Composer/Agent mode"
echo ""
echo "Key shortcuts:"
echo "  Tab       — Accept autocomplete"
echo "  Cmd+K     — Inline edit"
echo "  Cmd+L     — Chat"
echo "  Cmd+I     — Composer (agent mode)"
