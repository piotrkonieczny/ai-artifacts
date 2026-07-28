# AGENTS.md

## Project

This is an npm package (`@piotrkonieczny/ai-artifacts`) containing AI skills for opencode. Published to GitHub Packages on every merge to `main`.

## Structure

```
skills/
  pk10x-<name>/
    SKILL.md          # Skill definition: when to use, workflow, output format
    references/       # Supporting docs (checklists, examples, guides)
```

## Conventions

- All skills are prefixed with `pk10x-`
- Each skill must have a `SKILL.md` at its root
- `references/` is optional — add it only when the skill needs supporting material
- Keep SKILL.md concise: trigger conditions, workflow steps, output format
- Reference docs go in `references/` — detailed checklists, examples, guides

## Publishing

- Version lives in `package.json`
- Push to `main` triggers `.github/workflows/publish.yml`
- Bump version before merging: `npm version patch|minor|major`
- Never push a version that already exists in the registry (409 error)

## Adding a skill

1. Create `skills/pk10x-<name>/SKILL.md`
2. Optionally add `skills/pk10x-<name>/references/`
3. Bump version in `package.json`
4. Commit, push, merge to `main`

## Consumer setup

Consumers add to their repo:

```
@piotrkonieczny:registry=https://npm.pkg.github.com
```

Then `npm install @piotrkonieczny/ai-artifacts`. Within the same org, auth is automatic via `GITHUB_TOKEN`.
