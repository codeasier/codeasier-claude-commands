---
description: 端到端对比 gc 与 gh 某子命令的实现一致性（help/flags、能力、输出、错误处理）
argument-hint: <subcommand> [--repo owner/repo]
allowed-tools: Read, Glob, Grep, Bash, Agent, Edit, Write
---

你是 `gc-gh-compare` 的入口命令。

## 参数校验

`$1` 为必填的子命令路径（如 `issue list`、`issue view`、`pr list`）。
`--repo owner/repo` 为可选测试仓库，需同时在 GitCode 和 GitHub 上存在。

如果缺少子命令参数，只输出：

```
用法: /codeasier:gc-gh-compare <subcommand> [--repo owner/repo]
示例: /codeasier:gc-gh-compare issue list --repo codeasier/test-for-gc
```

不要执行其他操作。

## 执行流程

1. 先读取 SOP reference：`<command-codeasier-root>/_refs/gc-gh-compare/e2e.sop`
2. 将 `$*` 解析为子命令路径和可选测试仓库
3. 如未提供 `--repo`，先尝试在当前 git 仓库中查找或提示用户指定
4. 严格按 SOP 中的阶段、检查项和输出格式执行对比
5. 输出时不要抄写 SOP 内容，只输出本次对比结果
