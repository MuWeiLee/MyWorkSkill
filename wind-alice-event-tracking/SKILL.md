---
name: alice-event-tracking
description: Use when designing, reviewing, or updating user behavior event tracking requirements, 埋点需求, 埋点方案, 功能点埋点, 功能点命名, 功能点ID申请, 批量导入Excel, 体贴系统（公司埋点系统）, 用户行为数据, 数据埋点, 功能埋点, function_name, page_name, target_id, target_type, target_event, target_detail_info, app_name, os, or 功能点ID application tables.
---

# Alice Event Tracking

## 版本自检（每次使用前）

本技能的规范部分由 Git 仓库 `MuWeiLee/MyWorkSkill`（`wind-alice-event-tracking`）管理版本。被触发（埋点 / 用户行为 / 功能点 / 体贴系统埋点等场景）时，先运行：

```powershell
scripts/check.ps1 -Mode auto   # 检查 Git 最新版本，有更新则同步后继续
scripts/check.ps1 -Mode check  # 仅检查，不写入
```

- **Git 管理文件（随版本更新）**：本 `SKILL.md`、`agents/openai.yaml`、`references/page_names.md`、`references/special_params.md`。
- **仅本地文件（不随 Git 更新）**：`references/local/`（飞书 Base 坐标、体贴系统回流等内部信息）、`references/known_events.md`（已确认事件与功能点ID）、`references/feishu_enum_snapshot.md`（枚举快照）、`.lark-base-setup/`、`scripts/`（除 `check.ps1` 外的本地工具）。
- 网络不可用时提示并继续使用本地版本，不阻断任务。

## WindAlice Official Website Channel Source Rule

When designing WindAlice official website or landing-page event tracking, use the URL query parameter `page_from` to distinguish external channel sources.

Rules:

- Use `page_from`, not `referrer`, `channelSource`, or similar aliases.
- `page_from` is a URL/query attribution parameter. It is not one of the standard tracking schema fields.
- For page-load events, parse `page_from` from the current URL and use it for attribution analysis.
- Functional button/CTA events do not need `page_from` by default. Use `page_from` only on page-load events unless the user explicitly asks to include channel attribution on a functional event.
- Do not flatten `deviceId`, `userType`, `currentUrl`, or `page_from` into the standard function-point schema unless the project tracking SDK explicitly requires these as extra fields.
- `page_from` should be represented as the page-load attribution field, not as `target_detail_info`.

Example:

```text
https://alice.wind.com.cn/chat?page_from=wechatArticleReadMore
```

Official website schema rule:

- Page-load function points may use the lightweight official website schema:

```json
{
  "event_name": "功能点名称",
  "report_type": "页面载入",
  "event_id": "待申请",
  "app_name": "产品名称",
  "function_name": "所在功能页面",
  "page_name": "当前页面名称",
  "page_from": "作为运营渠道的填写目标",
  "os": "windows / macOS"
}
```

- Functional or CTA function points must keep the full component schema. Do not include `page_from` by default:

```json
{
  "event_name": "功能点名称",
  "report_type": "点击按钮 / 页面载入 / 业务链路/接口上报 / 反馈上报",
  "event_id": "待申请",
  "app_name": "产品名称",
  "function_name": "所在功能页面",
  "page_name": "当前页面名称",
  "target_id": "功能名称",
  "target_type": "功能类型 button/card/tab...",
  "target_event": "action / status",
  "target_detail_info": "详细的某个子项、标的名称等等",
  "os": "windows / macOS"
}
```

- For CTA clicks, do not set `report_type` to `页面载入`; use a click/action report type.
- `target_detail_info` is optional. Include it only when a single concrete detail needs to be recorded, such as user input, search code, tab switching value, sub-item, target name, activity name, or selected value. Plain button clicks usually do not need `target_detail_info`.
- `deviceId`, `userType`, and `currentUrl` are SDK/common-log fields unless the project explicitly asks to include them.

Use this skill to turn feature designs into consistent event tracking requirements. Generic template for WindAlice product family across multiple platforms.

## Workflow

1. **查阅已有取值** — 启动埋点处理时，先查阅本地 `references/known_events.md` / `references/page_names.md` 与本地快照 `references/feishu_enum_snapshot.md`（刷新命令见 `references/local/feishu.md`），复用已有的 page_name / target_type / app_name / target_event / target_id 值，避免新建重复。飞书 Base 的实时查询方式见本地文件 `references/local/feishu.md`。
2. Identify each user-triggered function point.
3. Name it with this pattern:

```text
功能模块-页面位置-用户操作动作
```

Examples:

```text
对话-分享Agent-打开分享弹窗
运营-邀请用户-立即邀请
个人中心-积分明细-查看明细
任务-任务列表-选择任务
```

4. Determine the report type (development guidance, not a tracked parameter). Common types:

```text
点击按钮
页面载入
业务链路/接口上报
反馈上报
```

5. Fill parameters using the standard schema.
6. If the 功能点ID is not available yet, mark it as `待申请`.
7. **输出埋点方案** — 以 Block 格式输出每个功能点的完整方案（见 Output Format），供产品/开发贴入体贴系统功能点申请。
8. **生成批量导入Excel** — 用户要求"生成批量导入excel"时，按「批量导入 Excel 生成」一节生成申请文件（功能点编号留空，导入体贴系统时自动生成）。
9. **申请后回流** — 用户将 Excel 导入体贴系统完成申请、导出最终结果后，按 `references/local/feishu.md` 的「体贴系统申请后回流飞书」写入并校验。**不自动触发**，每次回流都须等用户明确指令。

## Standard Parameters

```text
app_name           产品+端标识，固定枚举：windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_desktop；未特别说明为移动端/小程序的功能，直接写出对应枚举值（如网页功能 → windAlice_web，桌面端 → windAlice_pc）
function_name      大功能模块，例如 chat / work / link / userCenter（可扩展）
page_name          详细页面名称，lower camelCase
target_id          组件标识，lower camelCase；同一个功能点ID可支持多个 target_id 表示状态切换
target_type        Bootstrap组件类型，例如 button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown
target_event       事件性质：status（当前状态快照）/ action（状态变化）
target_detail_info 业务明细，例如状态切换结果、输入内容、选择结果、用户ID、商品ID、文档ID等
os                 macOS / iOS / ipadOS / windows / android / harmonyOS（开发按运行环境上报，此处仅给指引）
```

Rules:

- `app_name` 默认直接写出枚举值：未特别说明是移动端/小程序的功能，直接给出对应端值（如网页功能 `windAlice_web`），不要留空或写"待确认"；仅当用户明确为移动端/小程序时才选 `windAlice_app` / `windAlice_miniApp`。
- `function_name` 必须严格参考「参数取值规范」已有用值（本地快照 `references/feishu_enum_snapshot.md`，实时表见 `references/local/feishu.md`）复用已确认的功能域，避免新增过多取值；若不确定或找不到匹配取值，必须先与使用人确认，确认后才可以新增。
- `function_name` represents large functional modules; expand as the product grows. See `references/page_names.md` for confirmed module and page name values.
- `function_name` 与 `page_name` 的层级关系：`function_name` 是顶级功能域，对应一级路由/主导航Tab；`page_name` 是该功能域下的具体页面，对应二级路由/页面组件。一个 `function_name` 下可有多个 `page_name`。
- Use lower camelCase for `page_name` and `target_id`, for example `conversation`, `openSharePopup`, `chooseAgent`.
- State toggles may share one 功能点ID and use multiple `target_id` values, for example `collapseList, expandList`.
- `target_event` distinguishes event nature:
  - `status` — reporting current state (e.g., page load, initial state, current selection)
  - `action` — reporting a state change caused by user interaction or system transition
- Prefer structured IDs (e.g. `userId`, `agentId`) over display names in `target_detail_info`; include both only if implementation can pass structured detail.
- If one feature appears on many pages, keep one function concept where reasonable and distinguish source with `page_name`.
- For confirmed events and assigned 功能点ID values, see local `references/known_events.md`（内部，仅本地）。
- For API, session, feedback, website, or startup events, use the extra fields in `references/special_params.md` instead of forcing all data into `target_detail_info`.

## Development Guidance: Report Type

`report_type` is not a tracked parameter. It tells developers which implementation method to use:

```text
点击按钮          → 绑定点击事件监听
页面载入          → 绑定页面/组件生命周期
业务链路/接口上报  → 在接口请求/响应链路中上报
反馈上报          → 在反馈表单提交中上报
```

## Output Format

所有输出数据（埋点方案、参数取值、枚举对照等）一律优先使用 **Block 格式**，禁止使用 markdown 表格，禁止整理成表格样式。埋点初步分析与最终埋点方案均遵循此规则。

每个功能点一个 code block：

```text
功能点名称：对话-分享Agent-打开分享弹窗
上报类型：点击按钮
功能点id：待申请
所属页面ID：7561
所属页面名称：网页版Alice
参数：
app_name: windAlice_web
function_name: chat
page_name: conversation
target_id: openShareAgentPopup
target_type: button
target_event: action
target_detail_info: {Agent id 或 Agent名称}
os: macOS, windows
```

多个功能点逐条以 Block 输出。确认回流后，可用 JSON block 数组承载完整参数（字段与「已知功能点总表」一致）。

Note: 上报类型 appears in output for developer reference but is not a tracked parameter.

## 批量导入 Excel 生成

当用户要求"生成批量导入excel"时，按用户提供的模板（如 `FuncPointTemplate.xlsx`）生成申请文件。模板包含两个 sheet：

```text
Sheet「功能点」列结构（从左到右）：
A 功能点编号 | B 所属页面ID | C 所属页面名称 | D 功能点名称
E/F/G 参数1（中文）/（英文）/（描述） | H/I/J 参数2 | K/L/M 参数3 | N/O/P 参数4 | Q/R/S 参数5

Sheet「页面信息」（即模板的 Table2 页面）：
A 页面ID | B 页面名称
该 sheet 内容随不同产品经理负责的模块变化，由 PM 维护，生成时动态读取
```

填写规则：

```text
功能点编号：必须留空，导入体贴系统时自动生成
所属页面ID / 所属页面名称：参考「页面信息」sheet（Table2），按页面名称匹配填入对应 ID
功能点名称：埋点方案确认后的功能点名称
参数组（参数N 中文/英文/描述）：
- 无特别要求时，参数N（中文）= 参数N（英文）= 参数名（如 app_name、target_id）
- 参数描述N = 该参数在本功能点的取值（如 windAlice_web、button）
- target_detail_info 等自由文本参数，参数描述 = 需要记录的业务明细说明
- 用户特别指定时（如 来源/source、金额/price），按指定填写，中英文可不同
```

参数组扩展：模板默认到参数5，实际参数超过 5 个时，按同样式继续追加列（每组 3 列：中文/英文/描述，如 参数6、参数7…），不得把多余参数硬塞进 target_detail_info。

生成实现（python3 + openpyxl）：

```python
import openpyxl

SRC = "用户提供的模板.xlsx"  # 保留「页面信息」sheet 的页面ID/名称
OUT = "功能点批量导入-{模块}-{YYYYMMDD}.xlsx"
wb = openpyxl.load_workbook(SRC)
ws = wb["功能点"]
def group(param, value):  # 中文/英文/描述一组
    return [param, param, value]
for fp in funcpoints:     # funcpoints: [page_id, page_name, event_name, [(param, value), ...]]
    row = ["", fp.page_id, fp.page_name, fp.event_name]
    for k, v in fp.params:
        row += group(k, v)
    ws.append(row)        # 从第2行起填入，覆盖模板示例行
wb.save(OUT)
```

以模板文件为基准复制「功能点」sheet 样式（表头不变，只填数据行），覆盖模板自带示例行。文件保存到用户指定路径，默认当前工作目录，命名如 `功能点批量导入-自动任务-20260916.xlsx`。

## 本地信息（不进 Git）

飞书 Base 坐标与表 ID、体贴系统申请后回流飞书、一致性维护（实时查枚举/扩展取值）、本地枚举快照刷新等内部信息，全部保存在本地文件 `references/local/feishu.md`，**不随 Git 版本分发**。使用前查阅该文件获取飞书相关配置与命令。

## References

- `references/page_names.md` — function_name / page_name 命名与历史取值（Git 管理）。
- `references/special_params.md` — API/会话/反馈/官网等特殊事件字段规范（Git 管理）。
- `references/local/feishu.md` — 飞书 Base 坐标、体贴系统回流、一致性维护（**仅本地**）。
- `references/known_events.md` — 已确认的功能点ID与完整参数（**仅本地**）。
- `references/feishu_enum_snapshot.md` — 飞书「参数取值规范」本地镜像快照（**仅本地**）。