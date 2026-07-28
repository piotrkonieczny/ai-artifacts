# @piotrkonieczny/ai-artifacts

AI skills for opencode and other AI coding assistants. Published to GitHub Packages.

## Install

```bash
npm install @piotrkonieczny/ai-artifacts --save-dev
```

Requires `.npmrc` in your repo:

```
@piotrkonieczny:registry=https://npm.pkg.github.com
```

## Skills

| Skill | Description |
|-------|-------------|
| `pk10x-code-review` | Systematic code review workflow with checklist |
| `pk10x-git-workflow` | Git branching, commit messages, and PR conventions |

## Adding a skill

1. Create `skills/pk10x-<name>/SKILL.md`
2. Add `references/` dir for supporting docs (optional)
3. Bump version in `package.json`
4. Merge to `main` — CI publishes automatically
