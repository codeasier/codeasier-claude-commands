---
description: 分析指定 Claude Code 会话的状态、失败原因与工具调用异常
argument-hint: <session-id>
allowed-tools: Read, Glob, Grep, Bash
---

如果没有提供 session id，就只输出：`用法: /codeasier:session-review <session-id>`，不要执行其他操作。

如果提供了 session id，请分析 Claude Code 会话 `$1` 当前的状态与失败原因，并总结其调用工具的情况与异常点。

要求：
- Claude Code 项目级会话通常保存在 `~/.claude/<PATH-TO-PROJECT>/<session-id>.jsonl` 中，请先定位对应会话文件。
- 结合会话记录判断：
  - 当前执行到哪个阶段
  - 为什么失败或卡住
  - 调用了哪些关键工具
  - 哪些工具调用报错、被拒绝、参数不合法或重复无效
- 输出一份结构化总结，方便后续排障。
