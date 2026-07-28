# pk10x-git-workflow

Git workflow conventions for consistent, traceable development.

## When to use

- Starting new feature work
- Writing commit messages
- Managing branches and merges

## Branch naming

```
<type>/<ticket-id>-<short-description>
```

Types: `feat`, `fix`, `chore`, `refactor`, `docs`, `test`

Examples:
- `feat/PROJ-123-add-user-auth`
- `fix/PROJ-456-null-pointer-on-empty-list`

## Commit messages

Follow Conventional Commits:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

Types and their versioning impact:
- `fix:` → patch bump
- `feat:` → minor bump
- `feat!:` or `BREAKING CHANGE:` → major bump

Examples:
```
feat(auth): add OAuth2 login flow
fix(api): handle empty response from upstream
chore(deps): bump axios to 1.7.0
```

## Workflow

1. Create branch from `main`
2. Make small, focused commits
3. Open PR when ready for review
4. Squash-merge to keep main history clean
5. Delete branch after merge

## Rules

- Never force-push to `main`
- Every merge must come from a PR (no direct commits)
- PR descriptions must link to the issue/ticket
- Resolve all review comments before merge

See references/conventions.md for the full commit message guide.
