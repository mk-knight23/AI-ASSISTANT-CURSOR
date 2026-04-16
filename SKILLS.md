# 🔮 Elite Skill Set: AI-ASSISTANT-CURSOR

This file defines the high-fidelity agentic skills for the Cursor / IDE environment.

---

## 🎼 Skill: Composer 2.0 Orchestration
**Trigger**: Multi-file refactors or new feature creation.
**Instructions**:
1. Open Composer with `Cmd+I`.
2. Toggle **Agent Mode** only for architectural changes.
3. Provide a clear "Blueprint" in the first prompt.
4. Review the "Diff Surface" meticulously before clicking "Accept All."

---

## 🛠️ Skill: MDC Rule Engineering (Rules on Disk)
**Trigger**: When project standards need to be enforced across folders.
**Instructions**:
1. Create `.mdc` files in `.cursor/rules/` for specific modules (e.g., `api-router.mdc`).
2. Use the "Glob Pattern" field to target the rule to specific files.
3. Define "Never" and "Always" sections to prune hallucination paths.
4. Test rules by asking Cursor "Does this file comply with our rules?"

---

## ☁️ Skill: Background Agent Deployment
**Trigger**: Running long tests, generating documentation, or large codebase audits.
**Instructions**:
1. Use the `@background` tag in Composer or Chat.
2. Ensure the `agents-config.json` is configured for your environment.
3. Monitor progress in the "Agent Console" sidebar.
4. Integrate the resulting artifacts (reports/logs) into the `walkthrough.md`.

---

## 🔍 Skill: Semantic Context Optimization
**Trigger**: When Cursor fails to find symbols or files.
**Instructions**:
1. Force re-indexing via `Settings → Codebase Indexing`.
2. Use `@Codebase` to force a wider search.
3. Use `@Symbols` or `@Files` to provide exact references.
4. Structure code using standardized "Design Tokens" to help the AI spot patterns.

---

## 🪄 Skill: Zero-Interaction Refinement (Tab/Edit)
**Trigger**: Small, local changes or boilerplate generation.
**Instructions**:
1. Rely on "Tab-to-Accept" for obvious completions.
2. Use `Cmd+K` for locally scoped edits without opening a full chat window.
3. Provide "Inline Feedback" directly in the code comment to steer the generation.
4. Use `Cmd+Shift+R` to trigger BugBot security reviews on the active file.
