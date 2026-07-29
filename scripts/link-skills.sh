#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$REPO_ROOT/skills"

if [ ! -d "$SKILLS_DIR" ]; then
  echo "Error: skills/ directory not found at $SKILLS_DIR"
  exit 1
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

    if [ -L "$target" ]; then
      rm "$target"
    fi

    ln -s "../../skills/$name" "$target"
    count=$((count + 1))
  done

  echo "  $tool_name: linked $count skill(s) to $tool_dir"
}

echo "Linking skills..."
link_tool "$REPO_ROOT/.opencode/skills" "OpenCode"
link_tool "$REPO_ROOT/.claude/skills" "Claude"
link_tool "$REPO_ROOT/.agents/skills" "Codex"
echo "Done."
