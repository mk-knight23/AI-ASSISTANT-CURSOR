# Tab Completion

Cursor's Tab completion is an intelligent, context-aware autocomplete system that goes far beyond traditional IDE suggestions. It predicts multi-line code blocks, understands your codebase patterns, and learns from your editing behavior.

## How It Works

Tab completion uses a custom model trained specifically for code prediction. It analyzes:

- The current file context (imports, variables, types)
- Open editor tabs and recently edited files
- Your project's coding patterns and conventions
- The cursor position and surrounding code structure

## Key Features

### Multi-Line Predictions

Unlike single-token completions, Cursor predicts entire blocks of code:

```typescript
// Type the function signature, Tab completes the body
function validateEmail(email: string): boolean {
  // Tab predicts:
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}
```

### Next-Action Prediction

After accepting a completion, Cursor anticipates your next edit location. It can:

- Jump to the next logical edit point
- Suggest related changes across the file
- Chain completions for repetitive patterns

### Smart Edits (Cursor Prediction)

Tab does not just insert new code. It can modify existing code contextually:

```python
# If you start renaming a variable, Tab suggests renaming all occurrences
# Before: user_name = get_name()
# After typing "username": Tab offers to update the full file
```

## Configuration

| Setting | Description | Default |
|---------|-------------|---------|
| `cursor.tab.enabled` | Enable/disable Tab completions | `true` |
| `cursor.tab.multiLine` | Allow multi-line suggestions | `true` |
| `cursor.tab.acceptMode` | How suggestions are accepted | `tab` |
| `cursor.tab.debounceMs` | Delay before showing suggestion | `300` |

## Usage Tips

### Accepting and Rejecting

| Action | Shortcut |
|--------|----------|
| Accept full suggestion | `Tab` |
| Accept word-by-word | `Ctrl+Right Arrow` |
| Reject suggestion | `Escape` |
| See next suggestion | `Alt+]` |
| See previous suggestion | `Alt+[` |

### Best Practices

1. **Write clear comments first** - Tab uses comments as intent signals to generate better completions
2. **Use descriptive names** - Variable and function names guide the prediction model
3. **Keep related files open** - Open tabs provide additional context for smarter suggestions
4. **Let it chain** - After accepting one suggestion, pause briefly for the next prediction
5. **Write type signatures** - Typed function signatures produce more accurate body completions

## Model Details

Tab completion uses `cursor-small`, a lightweight model optimized for:

- Low latency (sub-100ms response times)
- High throughput (runs locally where possible)
- Code-specific training data
- Pattern matching across your workspace

## Quota

| Plan | Monthly Completions |
|------|---------------------|
| Hobby (Free) | 2,000 |
| Pro | Unlimited |
| Business | Unlimited |

## Comparison with GitHub Copilot

| Feature | Cursor Tab | GitHub Copilot |
|---------|-----------|----------------|
| Multi-line predictions | Yes | Yes |
| Next-action prediction | Yes | No |
| Edit existing code | Yes | No |
| Codebase-aware | Yes | Limited |
| Accepts partial suggestions | Word-by-word | Line-by-line |

## Troubleshooting

- **Slow suggestions**: Check network connectivity; reduce `debounceMs` if on a fast connection
- **Irrelevant completions**: Ensure related files are open; add JSDoc or type hints
- **No suggestions appearing**: Verify Tab is enabled in settings; check quota limits
- **Conflicting extensions**: Disable other autocomplete extensions that may intercept Tab
