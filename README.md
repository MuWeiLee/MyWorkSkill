# MyWorkSkill

更新我使用的 Skill 并支持外部人员下载使用。技能清单与版本见根目录 `manifest.json`。

## 受管技能

- **wind-alice-event-tracking**：Wind Alice/ALICE 体系用户行为埋点方案技能（功能点命名、page_name、target_id 等规范与枚举参考）。

## 使用方式（产品经理）

1. 把技能文件夹（如 `wind-alice-event-tracking`）放入 SKILL 目录：Trae 用 `.trae\skills`，Codex 用 `.codex\skills`。
2. 维护者机上有本地校验技能 `wind-alice-event-tracking-check`：使用前运行

   ```powershell
   .\<skills目录>\wind-alice-event-tracking-check\scripts\check.ps1 -Mode auto
   ```

   自动比对远端 `manifest.json` 版本与文件 SHA256，有更新则下载替换，无更新直接使用。
3. 校验会覆盖本机 `.trae\skills` 与 `.codex\skills`；网络不可用时沿用本地版本，不影响使用。

## 维护（技能维护者）

修改源文件后，在维护机执行（需 `$env:GITHUB_TOKEN`）：

```powershell
d:\万得Alice\scripts\publish_myskill.ps1
```

脚本会自动：比对远端 manifest → 变更技能 patch 版本 +1 → 重新生成 `manifest.json` → 全量重建仓库树并经 GitHub API 提交。发布后他人使用校验技能即会同步新版。

> 说明：发布为精简对外——仅包含 SKILL.md、agents、references；本地的 `.lark-base-setup` 与 `scripts/` 内部配置/导出数据不随发。