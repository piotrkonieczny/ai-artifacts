#!/usr/bin/env bash
set -euo pipefail

PACKAGE_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$PACKAGE_ROOT/skills"

if [ ! -d "$SKILLS_DIR" ]; then
  echo "Error: skills/ directory not found at $SKILLS_DIR"
  exit 1
fi

# When installed via npm, find the consumer's repo root
# Script is at: <consumer>/node_modules/@piotrkonieczny/ai-artifacts/scripts/
# Go up 4 levels to reach <consumer>/
if [[ "$PACKAGE_ROOT" == *"/node_modules/"* ]]; then
  REPO_ROOT="$(cd "$PACKAGE_ROOT/../../.." && pwd)"
else
  REPO_ROOT="$PACKAGE_ROOT"
fi

link_tool() {
  local tool_dir="$1"
  local tool_name="$2"

  mkdir -p "$tool_dir"

  local count=0
  for skill in "$SKILLS_DIR"/*/; do
    [ -d "$skill" ] || continue
    local name
    name="$(basename "$skill")"
    local target="$tool_dir/$name"
    local rel_path
    rel_path="$(realpath --relative-to="$tool_dir" "$SKILLS_DIR/$name")"

    if [ -L "$target" ]; then
      rm "$target"
    fi

    ln -s "$rel_path" "$target"
    count=$((count + 1))
  done

  echo "  $tool_name: linked $count skill(s) to $tool_dir"
}

echo "Linking skills..."
link_tool "$REPO_ROOT/.opencode/skills" "OpenCode"
link_tool "$REPO_ROOT/.claude/skills" "Claude"
link_tool "$REPO_ROOT/.agents/skills" "Codex"
echo "Done."
