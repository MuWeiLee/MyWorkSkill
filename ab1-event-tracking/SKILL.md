---
name: ab1-event-tracking
description: Use when designing, reviewing, or updating AB1/WindClaw event tracking requirements, 功能点埋点, 功能点命名, page_name, target_id, target_type, target_detail_info, app_name, os, or internal 功能点ID application tables.
---

# AB1 Event Tracking

Use this skill to turn AB1/WindClaw feature designs into consistent event tracking requirements.

## Workflow

1. Identify each user-triggered function point.
2. Name it with this pattern:

```text
页面/模块-位置/功能区域-用户操作动作
```

Examples:

```text
Agent-列表-选择Agent
Agent-列表-展开收起列表
运营-邀请用户-立即邀请
对话-分享Agent-打开分享弹窗
特性-分享Agent-打开分享弹窗
```

3. Define the report type. Common types:

```text
点击按钮
页面载入
业务链路/接口上报
反馈上报
```

4. Fill parameters using the standard schema.
5. If the internal 功能点ID is not available yet, mark it as `待申请`.
6. Output a compact table or block that product/design can paste into the internal system.

## Standard Parameters

Always include these unless the feature clearly does not support them:

```text
page_name: 功能触发的页面名称
target_type: 功能样式类型，例如 button / checkbox / radioButton / tab / switch / card / tableList / textInput / banner
target_id: 功能英文名称，小驼峰；同一个功能点ID可支持多个 target_id 表示状态切换
target_detail_info: 业务明细，例如 Agent id、Agent名称、技能名称、WindCode股票代码、对话ID
app_name: windClaw
os: mac, windows
```

Rules:

- `app_name` currently uses `windClaw` for new requirements unless the user says otherwise.
- Prefer `Agent id` over `Agent名称` in `target_detail_info`; include both only if implementation can pass structured detail.
- Use lower camelCase for `target_id`, for example `openShareAgentPopup`, `chooseAgent`, `expandAgentList`.
- State toggles may share one 功能点ID and use multiple `target_id` values, for example `collapseAgentList, expandAgentList`.
- If one feature appears on many pages, keep one function concept where reasonable and distinguish source with `page_name`.
- For page names already used in historical tracking, see `references/page_names.md`.
- For confirmed recently requested events and assigned 功能点ID values, see `references/known_events.md`.
- Some tracking points are not simple UI interactions. For API, session, feedback, website, or startup events, use the extra fields in `references/special_params.md` instead of forcing all data into `target_detail_info`.
- Historical files may contain `windClaw`, `ab1Claw，windClaw`, or `ab1Claw，windClaw，browser`; follow the current project convention stated by the user instead of normalizing blindly.

## Output Format

For quick discussion, use blocks:

```text
功能点名称：对话-分享Agent-打开分享弹窗
上报类型：点击按钮
功能点id：待申请
参数：
page_name: conversation
target_type: button
target_id: openShareAgentPopup
target_detail_info: {Agent id 或 Agent名称}
app_name: windClaw
os: mac, windows
```

For multiple events, use a table with these columns:

```text
功能点名称 | 上报类型 | 功能点id | page_name | target_type | target_id | target_detail_info | app_name | os
```

## Historical Files

When the user asks to align with existing AB1/WindClaw tracking, inspect recent function point files under:

```text
D:\WFT-App-SVN\Product\WFT-AB1-产品设计\0-AB1-产品设计相关文档\2-产品功能点
```

For 20260512 and later, the most useful Excel files observed are:

```text
WindClaw功能点-20260512.xlsx
20260608-WindClaw-个股话题页面功能点-含详情页面功能操作\WindClaw功能点个股详情.xlsx
```

These workbooks usually contain:

```text
功能点
页面信息
```

Use the `功能点` sheet to infer historical `page_name`, `target_type`, and `target_id` conventions.

Also check user-provided current workbooks such as downloaded `WindClaw功能点 (*.xlsx)` files when the user asks whether the skill should be updated.
