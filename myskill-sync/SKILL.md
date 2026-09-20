---
name: myskill-sync
description: 校验并更新 GitHub 仓库 MyWorkSkill 发布的技能版本。当用户要使用仓库中的受管技能（如 ab1-event-tracking）、询问技能版本/是否有更新、或要求同步技能时使用。触发词：技能更新、技能同步、版本校验、MyWorkSkill、更新技能。
---

# MySkill Sync

从 GitHub 仓库 `MuWeiLee/MyWorkSkill` 同步公共技能，让各产品经理免手动复制安装，使用前先校验远端最新版本。

## 何时使用

- 用户要使用受管技能（如 `ab1-event-tracking`），在正式执行前先做一次版本检查。
- 用户询问「技能有没有更新 / 版本不一致 / 更新技能」。
- 新机器安装后需要一次性初始化技能库。

## 工作流

1. 运行 `scripts/sync.ps1 -Mode check`：拉取远端 `manifest.json`，与本机已安装的技能做版本与文件 SHA256 比对。
2. 输出每项状态：`已是最新` / `可更新` / `本地缺失` / `网络不可用`。
   - `网络不可用`：提示用户网络受限，直接使用本地版本，不阻断任务。
3. 存在可更新或缺失项时，运行 `scripts/sync.ps1`（默认 `auto`：自动更新差异文件并记录状态）。
4. 更新完成后汇报：更新/安装了哪些技能、目标版本；若更新到 `myskill-sync` 自身，提示用户重新唤起技能以加载新版本。

## 行为约定

- 同步目标：本机存在的 `.trae\skills` 与 `.codex\skills` 都会被写入。
- 远端来源：`MuWeiLee/MyWorkSkill@main` 根目录的 `manifest.json`，文件经 `raw.githubusercontent.com` 下载。
- 版本状态记录在各 SKILL 根目录的 `_myskill_sync_state.json`，勿手动编辑。
- 两个客户端目录分别记录状态，互不影响。
- 本技能自身也在 manifest 中管理，支持自我更新。

## 维护（仅技能维护者）

- 修改技能源文件后，运行维护机上的 `scripts/publish_myskill.ps1`：自动对比远端 manifest，变更的技能自动递增 patch 版本并重新生成 `manifest.json` 发布到 GitHub。
- 发布完成后，其他产品经理下次使用技能时会自动检查到新版并更新。