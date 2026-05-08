---
description: Show available Codeasier commands and installation guidance.
allowed-tools: Read, Bash
---

List the available commands under `.claude/commands/codeasier/` in the current project or global install, summarize each command from filename and frontmatter if present, and show short usage guidance.

At minimum:
1. Confirm this is the `codeasier` command namespace.
2. Enumerate command files in `.claude/commands/codeasier/`.
3. Present each command as `/codeasier:<name>`.
4. If only `help` exists, say this namespace is initialized and ready for more commands.
5. Keep the answer concise.
