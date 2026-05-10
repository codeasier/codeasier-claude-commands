# Codeasier Claude Code Commands

A collection of custom Claude Code slash commands maintained by Codeasier.

## Install

### Option 1: Project-level install

Copy the namespace directory into your project:

```bash
mkdir -p .claude/commands
cp -R path/to/codeasier-claude-commands/.claude/commands/codeasier .claude/commands/
```

Then use commands like:

```text
/codeasier:help
```

### Option 2: Global install

Install for all local projects:

```bash
mkdir -p ~/.claude/commands
cp -R path/to/codeasier-claude-commands/.claude/commands/codeasier ~/.claude/commands/
```

Then use:

```text
/codeasier:help
```

### Option 3: Run the install script

```bash
./scripts/install.sh
```

Or install to a specific project:

```bash
./scripts/install.sh /path/to/project/.claude/commands
```

## Commands

| Command | Description |
| --- | --- |
| `/codeasier:help` | Show available Codeasier commands |
| `/codeasier:release-prep <version>` | Prepare a PyPI release workflow |
| `/codeasier:issue-review <issue_num>` | Analyze an issue proposal and append a GitHub comment |
| `/codeasier:issue-resolve <issue-num>` | Resolve an issue in an isolated git worktree |
| `/codeasier:worktree-clean` | Inspect and clean safe-to-remove git worktrees |
| `/codeasier:pr-followup <pr-number> [focus]` | Handle PR review follow-up using the repo SOP |
| `/codeasier:session-review [mode] <session-id>` | Review a Claude Code session for troubleshooting (`mode=troubleshoot`) or workflow summarization (`mode=summary`) |
| `/codeasier:docs-governance [mode] [scope]` | Audit or fix documentation structure and links |
| `/codeasier:env-setup [extra-env ...]` | Detect dev environment (conda, python, brew + optional node/go/rust/java/ruby/php) and configure project `.claude/settings.local.json` |

## Repository layout

```text
.claude/commands/codeasier/
scripts/install.sh
README.md
```

## Notes

- Keep command filenames stable so users can rely on the same slash command names.
- If a command depends on `gh`, `jq`, hooks, MCP, or other local tools, document that in the command file and README.
- If a command is project-specific, recommend project-level install instead of global install.
