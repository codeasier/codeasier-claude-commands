---
description: 按模式审查 Claude Code 会话，并从本命令旁的 SOP reference 加载对应规范
argument-hint: <mode> <session-id>
allowed-tools: Read, Glob, Grep, Bash
---

你是 `session-review` 的入口命令。你的职责不是在这里内联完整 SOP，而是：
1. 校验参数
2. 根据 mode 选择对应 SOP reference
3. 先读取 shared SOP，再读取 mode-specific SOP
4. 严格按读到的 SOP 执行会话审查

## 参数约定

- `$1`：`mode`，必须为 `troubleshoot` 或 `summary`
- `$2`：`session-id`

如果缺少参数，或 `mode` 不是 `troubleshoot|summary`，只输出：

`用法: /codeasier:session-review <troubleshoot|summary> <session-id>`

不要执行任何其他操作。

## 路由规则

- 总是先读取：`<command-codeasier-root>/_refs/session-review/shared.sop`
- 当 `$1=troubleshoot` 时，再读取：`<command-codeasier-root>/_refs/session-review/troubleshoot.sop`
- 当 `$1=summary` 时，再读取：`<command-codeasier-root>/_refs/session-review/summary.sop`

读取完成后：
- 将 `$2` 作为目标 session id
- 严格遵循 SOP 中的角色、执行步骤、输出格式和质量要求
- 输出时不要重复抄写 SOP 内容，只输出本次会话分析结果

## 执行要求

- 优先基于会话记录中的直接证据得出结论
- 不要臆测不存在的上下文
- 如果 SOP 与实际会话信息不足以支持强结论，应主动降低结论强度
