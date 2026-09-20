# MyWorkSkill

更新我使用的 Skill 并支持外部人员下载使用。仓库级版本由根目录 `manifest.json` 管理。

## 使用方式（产品经理）

1. **一次性安装同步器**：把 `myskill-sync` 文件夹放到 SKILL 目录（Trae: `.trae/skills`、Codex: `.codex/skills`）。
2. **使用技能前**：告诉 AI「检查技能更新」或直接使用受管技能，AI 会先运行
   `myskill-sync/scripts/sync.ps1 -Mode check` 校验版本，有更新时自动执行 `auto` 模式同步。
3. 同步会同时覆盖本机 `.trae\skills` 与 `.codex\skills` 两个目录，无需手动复制。

## 受管技能清单

仓库根 `manifest.json` 记录了每个技能的 `version` 与全部文件 SHA256。本地同步状态保存在各 SKILL 目录的 `_myskill_sync_state.json`。

## 维护（技能维护者）

修改技能源文件后，在维护机执行发布脚本（需 `$env:GITHUB_TOKEN`）：
`d:\万得Alice\scripts\publish_myskill.ps1`

脚本会自动：对比远端 manifest → 变更的技能 patch 版本 +1 → 重新生成 `manifest.json` → 经 GitHub API 提交。发布后其他产品经理下次使用技能即自动同步新版。