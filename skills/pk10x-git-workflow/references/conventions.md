# Git Conventions Reference

## Commit Message Format

```
<type>(<scope>): <description>

[body]

[footer(s)]
```

### Type definitions

| Type | Description | Version Bump |
|------|-------------|--------------|
| `feat` | New feature | Minor |
| `fix` | Bug fix | Patch |
| `docs` | Documentation only | None |
| `style` | Formatting, no logic change | None |
| `refactor` | Code restructuring, no behavior change | None |
| `perf` | Performance improvement | Patch |
| `test` | Adding or updating tests | None |
| `chore` | Build, CI, tooling | None |
| `revert` | Reverts a previous commit | Depends on reverted |

### Breaking changes

Either append `!` after the type/scope:
```
feat(api)!: change response format for /users
```

Or include a footer:
```
feat(api): change response format for /users

BREAKING CHANGE: /users now returns { data: [...] } instead of [...]
```

## Scope conventions

- Use the module or component name: `auth`, `api`, `ui`, `db`
- Keep it lowercase
- Omit if the change spans the whole project

## Examples

### Good
```
feat(auth): add JWT refresh token rotation
fix(db): prevent connection pool exhaustion under load
docs(readme): add local development setup instructions
refactor(api): extract validation middleware
```

### Bad
```
update stuff          # vague, no type
fixed bug             # no scope, no context
feat: WIP             # incomplete
asdfasdf              # meaningless
```

## PR Title

PR title should match the commit type and scope:
```
feat(auth): add OAuth2 login flow
```

This enables automated changelog generation.
