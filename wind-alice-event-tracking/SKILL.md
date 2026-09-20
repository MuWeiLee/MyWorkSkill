---
name: alice-event-tracking
description: Use when designing, reviewing, or updating user behavior event tracking requirements, 埋点需求, 埋点方案, 功能点埋点, 功能点命名, 功能点ID申请, 批量导入Excel, 体贴系统（公司埋点系统）, 用户行为数据, 数据埋点, 功能埋点, function_name, page_name, target_id, target_type, target_event, target_detail_info, app_name, os, or 功能点ID application tables.
---

# Alice Event Tracking

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

1. **同步并查阅枚举值** — 启动埋点处理时，先运行 `python scripts/sync_flybase_enum_snapshot.py` 把飞书 Base「参数取值规范」刷新为本地快照 `references/feishu_enum_snapshot.md`（幂等，失败不影响主流程，仅提示）；随后**优先实时查飞书 Base**（命令见 Consistency Maintenance），按 `取值类型` 筛选复用已有的 function_name / page_name / target_type / app_name / target_event / target_id 值，避免新建重复。**断网或 lark-cli 不可用时**，直接读取本地快照 `references/feishu_enum_snapshot.md`，再交叉参考 `references/page_names.md` / `references/known_events.md`。
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
9. **申请后回流飞书** — 用户将 Excel 导入体贴系统完成申请、导出最终结果（CSV 或 Excel）后，按「体贴系统申请后回流飞书」一节写入飞书并校验真实写入。**不自动触发**，每次回流都须等用户明确指令。

## Standard Parameters

```text
app_name           产品+端标识，固定枚举：windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_desktop
function_name      大功能模块，例如 chat / work / link / userCenter（可扩展）
page_name          详细页面名称，lower camelCase
target_id          组件标识，lower camelCase；同一个功能点ID可支持多个 target_id 表示状态切换
target_type        Bootstrap组件类型，例如 button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown
target_event       事件性质：status（当前状态快照）/ action（状态变化）
target_detail_info 业务明细，例如状态切换结果、输入内容、选择结果、用户ID、商品ID、文档ID等
os                 macOS / iOS / ipadOS / windows / android / harmonyOS（开发按运行环境上报，此处仅给指引）
```

Rules:

- `app_name` is chosen from the fixed enum based on the current product's platform.
- `function_name` represents large functional modules; expand as the product grows. See `references/page_names.md` for confirmed module and page name values.
- `function_name` 与 `page_name` 的层级关系：`function_name` 是顶级功能域，对应一级路由/主导航Tab；`page_name` 是该功能域下的具体页面，对应二级路由/页面组件。一个 `function_name` 下可有多个 `page_name`。
- Use lower camelCase for `page_name` and `target_id`, for example `conversation`, `openSharePopup`, `chooseAgent`.
- State toggles may share one 功能点ID and use multiple `target_id` values, for example `collapseList, expandList`.
- `target_event` distinguishes event nature:
  - `status` — reporting current state (e.g., page load, initial state, current selection)
  - `action` — reporting a state change caused by user interaction or system transition
- Prefer structured IDs (e.g. `userId`, `agentId`) over display names in `target_detail_info`; include both only if implementation can pass structured detail.
- If one feature appears on many pages, keep one function concept where reasonable and distinguish source with `page_name`.
- For confirmed events and assigned 功能点ID values, see `references/known_events.md`.
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

埋点初步分析与最终埋点方案一律使用 **Block 格式**呈现，禁止使用 markdown 表格，禁止整理成表格样式。

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

## 体贴系统申请后回流飞书

流程：

```text
1. 用户将生成的「批量导入Excel」导入体贴系统（公司埋点系统），完成功能点申请，系统自动生成功能点ID
2. 用户从体贴系统导出最终结果（CSV 或 Excel，含自动生成的功能点ID与全部参数）
3. 用户提供导出文件 → 按字段映射解析，逐条写入飞书 Base「已知功能点总表」
4. 新增取值追加到「参数取值规范」表
5. 读回校验，确保真实写入
```

字段映射（导出文件列 → 「已知功能点总表」字段）：

```text
功能点编号               → 功能点ID
所属页面ID / 所属页面名称 → 同名字段
功能点名称               → 功能点名称
上报类型（若有）          → 上报类型
参数组「参数N（中文/英文/描述）」→ 按参数名映射到 app_name / function_name / page_name / target_id / target_type / target_event / target_detail_info / os / abtest_group / 备注；参数描述即该字段值
无法映射到标准字段的参数（如 page_from、source、price 等特殊参数）→ 按 references/special_params.md 规范处理，必要时记入「特殊参数事件」表
```

每次写入时附加编辑信息（`最后编辑人员` / `最后编辑人姓名` / `最后编辑时间`，创建与更新都填写）：

```text
最后编辑人员（user 字段，multiple）       → 值格式 [{"id":"ou_xxx"}]；取 lark-cli whoami 的 onBehalfOf.openId（即当前操作人），不硬编码、不臆造 ID；解析失败则跳过该字段并提示
最后编辑人姓名（text 字段，冗余姓名）     → 取 lark-cli whoami 的 onBehalfOf.userName（如"李牧微"），与上面 ID 同源；方便 CSV 导出直接阅读
最后编辑时间（datetime 字段）             → 当前时间 Asia/Shanghai 的 "yyyy-MM-dd HH:mm" 文本，例如 "2026-09-18 10:00"
```

写入命令（每批最多 200 条，超出分批串行写同一 Table）：

```bash
lark-cli base +record-batch-create \
  --base-token AmaDbLGsEaXwW5sQHhHcWZEOnqb \
  --table-id tblA0Qi66a4mhK3Z \
  --json @records.json \
  --as user
```

records.json（每条记录附加编辑信息，人员取 `lark-cli whoami` 的 onBehalfOf.openId / userName）：

```json
{"create_records":[{"功能点名称":"<name>","功能点ID":"<id>","上报类型":["<type>"],"所属页面ID":"<page_id>","所属页面名称":"<page_name>","app_name":["<app>"],"function_name":"<fn>","page_name":"<pn>","target_id":"<tid>","target_type":["<tt>"],"target_event":["<te>"],"target_detail_info":"<detail>","os":"<os>","abtest_group":"<ab>","备注":"<remark>","最后编辑人员":[{"id":"<openId>"}],"最后编辑人姓名":"<userName>","最后编辑时间":"<yyyy-MM-dd HH:mm>"}]}
```

扩展「参数取值规范」：导出结果中出现新增的 function_name / page_name / target_id / target_type / target_event / app_name 取值时，追加到「参数取值规范」表（`tbl6qXSm3ECApDVf`），闭集枚举（app_name / target_type / target_event）需同步更新「枚举集合」列。

校验真实写入：写入后必须按功能点ID / 功能点名称过滤读回（`lark-cli base +record-list`），逐条核对记录存在且字段值一致；发现缺失或异常，补齐/重试后再次校验，全部确认后向用户汇报结果。

**不自动触发**：写入飞书与扩展参数取值必须等用户明确指令后执行。

## Consistency Maintenance

创建或更新功能点时，必须执行以下流程，确保跨会话一致性。**主数据源为飞书 Base，本地 `references/*.md` 仅作 fallback**。

### 飞书 Base 坐标

```text
Base URL:  https://my.feishu.cn/base/AmaDbLGsEaXwW5sQHhHcWZEOnqb
Base Token: AmaDbLGsEaXwW5sQHhHcWZEOnqb

Table 映射：
- 参数取值规范（读 + 扩展）  → table_id: tbl6qXSm3ECApDVf
- 已知功能点总表（写回流）  → table_id: tblA0Qi66a4mhK3Z
- 特殊参数事件（读 + 写）   → table_id: tblsOcsY5EpcPlwP
```

依赖环境：lark-cli 已绑定 user 身份。**直连 open.feishu.cn 会被网络重置，调用前必须显式设置代理：`HTTP_PROXY=http://10.106.60.172:8080`、`HTTPS_PROXY=http://10.106.60.172:8080`**（环境已提供代理时跳过）。

### 使用前：查阅

填写参数前，优先查 Base「参数取值规范」表，复用已有取值，避免新建同义不同名：

```bash
# 查询全部取值
lark-cli base +record-list --base-token AmaDbLGsEaXwW5sQHhHcWZEOnqb --table-id tbl6qXSm3ECApDVf --as user

# 按取值类型筛选（filter 写入 json 文件后以 @file.json 传入）
# filter-page.json: {"logic":"and","conditions":[["取值类型","intersects",["page_name"]]]}
lark-cli base +record-list --base-token AmaDbLGsEaXwW5sQHhHcWZEOnqb --table-id tbl6qXSm3ECApDVf --as user --filter-json @filter-page.json
```

按 `取值类型` 筛选：app_name / function_name / page_name / target_id / target_type / target_event。

**Fallback（断网/不可用时）：** 直接读本地快照 `references/feishu_enum_snapshot.md`（含更新时间），再交叉参考 `references/page_names.md` / `references/known_events.md`。快照刷新命令：`python scripts/sync_flybase_enum_snapshot.py`。

### 确认后：回流（仅在用户明确指令"回流到飞书"时执行）

回流数据以体贴系统导出结果为最终数据源（含自动生成的功能点ID），按「体贴系统申请后回流飞书」一节写入「已知功能点总表」；同时把新增取值追加到「参数取值规范」，并把两类新增同步回本地 `references/*.md`，保持双写一致。

**不自动触发**，每次都必须等用户明确指令。

### 扩展参数取值（新增枚举值 / 新增取值）

出现新的 function_name / page_name / target_id / target_type / target_event 取值时，追加到「参数取值规范」表，保持可扩展：

```bash
lark-cli base +record-batch-create \
  --base-token AmaDbLGsEaXwW5sQHhHcWZEOnqb \
  --table-id tbl6qXSm3ECApDVf \
  --json '{"create_records":[{"取值":"<new_value>","取值类型":["<type>"],"中文名称":"<cn_name>","所属模块":"<module>","是否枚举":false}]}' \
  --as user
```

规则：
- 追加而非覆盖，保留历史记录。
- 同义词（如"对话"和"会话"指向同一 page_name）统一用已有值，不新增。
- `app_name` / `target_type` / `target_event` 为闭集枚举，新增需同步更新对应行的「枚举集合」列。
- `function_name` / `page_name` / `target_id` 为已用值清单，新增直接追加行。
- 同步更新本地 `references/*.md` 作为 fallback，保持双写一致。

## References

- 飞书 Base「参数取值规范」（table_id: `tbl6qXSm3ECApDVf`）— function_name / page_name / target_type / app_name / target_event / target_id 取值规范，随用随沉淀。
- 飞书 Base「已知功能点总表」（table_id: `tblA0Qi66a4mhK3Z`）— 已确认的功能点ID及完整参数，以体贴系统导出结果回流。
- 飞书 Base「特殊参数事件」（table_id: `tblsOcsY5EpcPlwP`）— 非UI类事件（page_from / source,target / price,isCustom 等）的特殊参数。
- 批量导入Excel模板 — 用户提供的 `FuncPointTemplate.xlsx`，结构见「批量导入 Excel 生成」。
- 体贴系统 — 公司埋点系统，功能点申请/功能点ID生成与最终结果导出的系统。
- 本地快照 `references/feishu_enum_snapshot.md` — 飞书「参数取值规范」的本地镜像（带更新时间），断网时首选；刷新脚本 `scripts/sync_flybase_enum_snapshot.py`。
- 本地 `references/page_names.md` — fallback，飞书不可用时查阅。
- 本地 `references/known_events.md` — fallback，飞书不可用时查阅。
- 本地 `references/special_params.md` — fallback，飞书不可用时查阅。