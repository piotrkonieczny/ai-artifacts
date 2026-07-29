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

## Authentication

GitHub Packages requires authentication. The method depends on where you're installing from.

**In GitHub Actions (CI/CD):**

Auth is automatic — `GITHUB_TOKEN` is available by default when the workflow has `packages: read` permission. No extra config needed.

**Locally (on your machine):**

The easiest way is to use [GitHub CLI](https://cli.github.com/):

```bash
# Login to GitHub (one-time, opens browser)
gh auth login -s read:packages

# Set the token for npm
npm config set //npm.pkg.github.com/:_authToken=$(gh auth token)
```

Then install as normal:

```bash
npm install @piotrkonieczny/ai-artifacts --save-dev
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
