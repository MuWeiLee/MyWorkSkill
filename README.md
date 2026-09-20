# MyWorkSkill

更新我使用的 Skill 并支持外部人员下载使用。技能清单与版本见根目录 `manifest.json`。

## 受管技能

- **wind-alice-event-tracking**：Wind Alice/ALICE 体系用户行为埋点方案技能（功能点命名、page_name/target_id 等规范与产出形式）。
- 仅发布规范文件：`SKILL.md`、`agents/`、`references/page_names.md`、`references/special_params.md`。
- **不上 Git（仅本地）**：`references/local/`（飞书 Base 坐标、体贴系统回流等内部信息）、`references/known_events.md`、`references/feishu_enum_snapshot.md`、`.lark-base-setup/`、`scripts/` 本地工具。

## 使用方式（产品经理）

1. 把技能文件夹 `wind-alice-event-tracking` 放入 SKILL 目录：Trae 用 `.trae\skills`，Codex 用 `.codex\skills`。
2. 使用技能时，AI 先运行 `scripts/check.ps1 -Mode auto` 核对远端 `manifest.json` 版本：有更新则下载替换规范文件，无更新直接使用；网络不可用时沿用本地版本。
3. 飞书等团队内部信息存放在本地 `references/local/feishu.md`，各使用者自行维护，不随 Git 分发。

## 维护（技能维护者）

修改技能源文件后，在维护机执行（需 `$env:GITHUB_TOKEN`）：

```powershell
d:\万得Alice\scripts\publish_myskill.ps1
```

脚本会自动：比对远端 manifest → 变更技能 patch 版本 +1 → 重新生成 `manifest.json` → 全量重建仓库树并经 GitHub API 提交（白名单只含规范文件）。发布后他人使用技能时自动同步新版。