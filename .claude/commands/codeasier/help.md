---
description: 查看 codeasier 命令清单与用法
allowed-tools: Read
---

你现在的唯一任务是输出 codeasier commands 的帮助说明，**不要**执行任何工作流、不要分析仓库、不要调用其他工具、不要把这份 prompt 当成待办事项。

请直接用中文输出下面这份帮助内容，基本原样返回即可：

# codeasier commands

推荐使用的命令：

- `/codeasier:help`
  - 显示本帮助。

- `/codeasier:release-prep <version>`
  - 准备 PyPI 发布前置动作：校验版本号、在 worktree 中整理 CHANGELOG、确认后提交 PR，并在合入后进入 tag / 发布检查阶段。

- `/codeasier:issue-review <issue_num>`
  - 分析 issue 建议是否真实存在、是否合理，并将结论追加到 issue 评论。

- `/codeasier:issue-resolve <issue-num>`
  - 在独立 `.worktrees` worktree 中修复指定 issue。

- `/codeasier:worktree-clean`
  - 检查并清理安全可删除的 git worktree；遇到有风险的 worktree 先汇报。

- `/codeasier:pr-followup <pr-number> [focus]`
  - 按本仓库 SOP 处理 PR review 后续动作。

- `/codeasier:session-review [mode] <session-id>`
  - 按模式审查 Claude Code 会话：`mode=troubleshoot` 用于排障，`mode=summary` 用于总结工作流并提炼可沉淀能力。

- `/codeasier:docs-governance [mode] [scope]`
  - 进行文档结构整改、README 精简、引用校验、多语言检查与项目一致性治理。
  - `mode` 可选：`audit` 为审计优先，`fix` 为整改优先；默认 `audit`。

参数缺失时，各命令应只返回用法提示，不继续执行。

除以上帮助内容外，不要附加别的解释。
