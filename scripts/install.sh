#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-$HOME/.claude/commands}"

mkdir -p "$TARGET"
cp -R ".claude/commands/codeasier" "$TARGET/"

echo "Installed Codeasier commands to $TARGET/codeasier"
echo "Try: /codeasier:help"
