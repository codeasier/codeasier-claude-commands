---
description: 检查并清理安全可删除的 git worktree
allowed-tools: Read, Glob, Grep, Bash
---

检查当前项目的 git worktree 与 `.worktrees` 目录，按以下规则处理：

1. **遍历所有 worktree**，对每个 worktree 执行检查：
   - 是否存在未提交的变更（包括 staged 和 unstaged）
   - 是否存在未 push 到 `origin/main` 的本地 commit
   - 是否存在未跟踪的文件（untracked files）

2. **风险判定**：
   - 若 worktree **完全干净**（无未提交变更、无未 push commit、无未跟踪文件），直接删除
   - 若 worktree **存在任何上述风险**，**暂停并向我汇报**，等待我确认后再决定是否删除

3. **汇报格式**：
   - 干净 worktree：列出路径，标记「已删除」
   - 风险 worktree：列出路径，并说明具体风险（如“有 3 个未提交文件”、“领先 origin/main 2 个 commit”等）

执行时注意：
- 优先使用安全、可核实的 git 状态检查。
- 不要删除存在风险的 worktree，必须先等我确认。
