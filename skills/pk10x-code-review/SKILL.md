# pk10x-code-review

Systematic code review skill for AI-assisted development.

## When to use

- Reviewing pull requests
- Checking code quality before merge
- Auditing unfamiliar codebases

## Workflow

1. **Understand context** — read the PR description, linked issues, and affected files
2. **Check correctness** — does the code do what it claims? Are edge cases handled?
3. **Check structure** — naming, separation of concerns, appropriate abstraction level
4. **Check safety** — input validation, error handling, secrets exposure, injection risks
5. **Check testability** — are critical paths covered? Are tests testing behavior, not implementation?
6. **Summarize** — actionable findings grouped by severity (blocker / suggestion / nit)

## Output format

```markdown
## Review Summary

**Files reviewed:** N
**Verdict:** approve / request-changes / comment

### Blockers
- ...

### Suggestions
- ...

### Nits
- ...
```

## Principles

- Review the code, not the author
- Distinguish between "must fix" and "nice to have"
- Reference specific line numbers
- Suggest concrete fixes, not vague complaints
- Check references/checklist.md for the full review checklist
