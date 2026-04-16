# Composer 2.0: Advanced Engineering Strategies
## Technical Guide by Kazi Musharraf

Composer 2.0 is the most advanced multi-file editing tool in the Spectrum Ecosystem. To master it, one must move beyond simple prompts and embrace **Structural Intent**.

---

## 🏛️ The Three Pillars of Composition

### 1. Semantic Scoping (`@Docs` & `@Files`)
Do not let the agent guess. Use `@` symbols to strictly define the context window.
- **Strategem**: When refactoring a model, always inject `@models` and `@types` to ensure the agent understands the data contract.
- **Benchmark**: Targeted scoping reduces context-drift by 85% on large repositories.

### 2. Multi-File Parity
Composer 2.0 can modify 20+ files in a single pass. 
- **Workflow**:
    1. **Plan Phase**: Ask the Composer to "Draft a plan for [X]" before applying changes.
    2. **Review Phase**: Use the diff viewer to verify that the logic propagates correctly across imports.
    3. **Apply Phase**: Command the agent to "Apply the plan to all files."

### 3. Background Autonomy
For massive tasks (e.g., migrating from CommonJS to ESM), use **Background Agents**.
- **Execution**: Click the "Run in Background" button.
- **Result**: The agent will spawn a sandboxed environment, run tests, and notify you only when the parity check is complete.

---

## 🛠️ Sophisticated Prompting Patterns

### The "Architectural Pivot" Prompt
> "Using @AuthLayer and the new @Docs/OIDC-Spec, refactor the existing JWT logic to support OIDC. Maintain backwards compatibility in the /legacy-hooks directory. Run unit tests in the background and only present the diff if coverage remains above 95%."

### The "Global Style Synchronization" Prompt
> "Crawl the entire repository. Identify every instance where a hardcoded hex color is used. Replace them with the appropriate @mural-colors token from index.css. Update the documentation in /docs to reflect these changes."

---

## 🛡️ Guardrails: `.cursorrules` Optimization

To prevent the agent from making "lazy" edits, enforce strict patterns in your project rules:

```markdown
# Spectrum Guardrails
- ALWAYS use functional components for UI.
- NEVER use 'any' types in TypeScript.
- REQ: Every change to the API must include a corresponding update to the OpenAPI spec.
```

---
*Authored for the Spectrum Ecosystem | 2026.4*
