#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-$HOME/.claude/commands}"
INSTALL_DIR="$TARGET/codeasier"

mkdir -p "$TARGET"
cp -R ".claude/commands/codeasier" "$TARGET/"

# Replace <command-codeasier-root> placeholder with actual install path
find "$INSTALL_DIR" -type f \( -name '*.md' -o -name '*.sop' \) -exec \
  sed -i "s|<command-codeasier-root>|${INSTALL_DIR}|g" {} +

echo "Installed Codeasier commands to $INSTALL_DIR"
echo "Try: /codeasier:help"
