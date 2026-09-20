## Alice Tutorial / 新手引导 - final confirmed 2026-09-01

```text
功能点名称：新手引导-页面载入
功能点id：922610860064
所属页面ID：7838
所属页面名称：新手引导
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: tutorialPageView
target_type: page
target_event: status
os: windows / macOS
abtest_group: userA, userB
AB规则：userId尾号为奇数上报userA，尾号为偶数上报userB
```

```text
功能点名称：新手引导-工作选择-点击选择类型
功能点id：922610860065
所属页面ID：7838
所属页面名称：新手引导
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: selectWorkType
target_type: card
target_event: action
target_detail_info: 选择的角色、工作类型
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：新手引导-推荐问句-点击发送任务
功能点id：922610860066
所属页面ID：7838
所属页面名称：新手引导
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: sendRecommendedQuestion
target_type: card
target_event: action
target_detail_info: 根据场景选择的问句
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：新手引导-用户问句输入-发送任务
功能点id：922610860067
所属页面ID：7838
所属页面名称：新手引导
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: sendCustomQuestion
target_type: button
target_event: action
target_detail_info: 用户发送的问句内容
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：活动弹窗-弹窗曝光
功能点id：922610860068
所属页面ID：7561
所属页面名称：网页版Alice
app_name: windAlice_web
function_name: operationPopup
page_name: operationActivityPopupView
target_id: rewardPopupView
target_type: popup
target_event: status
target_detail_info: 新用户赠送积分，或其他活动名称
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：活动弹窗-弹窗操作
功能点id：922610860069
所属页面ID：7561
所属页面名称：网页版Alice
app_name: windAlice_web
function_name: operationPopup
page_name: operationActivityPopupView
target_id: rewardPopupAction
target_type: button
target_event: action
os: windows / macOS
abtest_group: userA, userB
说明：该功能点不需要target_detail_info
```

## Alice Tutorial / 新手引导

```text
功能点名称：新手引导-页面载入
上报类型：页面载入
功能点id：922610860064
所属页面ID：7838
所属页面名称：新手引导
参数：
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: tutorialPageView
target_type: page
target_event: status
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：新手引导-工作选择-点击选择类型
上报类型：点击按钮/卡片
功能点id：922610860065
所属页面ID：7838
所属页面名称：新手引导
参数：
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: selectWorkType
target_type: card
target_event: action
target_detail_info: 选择的角色、工作类型
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：新手引导-推荐问句-点击发送任务
上报类型：点击卡片
功能点id：922610860066
所属页面ID：7838
所属页面名称：新手引导
参数：
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: sendRecommendedQuestion
target_type: card
target_event: action
target_detail_info: 根据场景选择的问句
os: windows / macOS
abtest_group: userA, userA（申请表原值，疑似应为 userA, userB，待确认修正）
```

```text
功能点名称：新手引导-用户问句输入-发送任务
上报类型：点击按钮
功能点id：922610860067
所属页面ID：7838
所属页面名称：新手引导
参数：
app_name: windAlice_web
function_name: onboarding
page_name: aliceTutorial
target_id: sendCustomQuestion
target_type: button
target_event: action
target_detail_info: 用户发送的问句内容
os: windows / macOS
abtest_group: userA, userB
```

## Operation Popup / 活动弹窗

```text
功能点名称：活动弹窗-弹窗曝光
上报类型：业务链路/状态曝光
功能点id：922610860068
所属页面ID：7561
所属页面名称：网页版Alice
参数：
app_name: windAlice_web
function_name: operationPopup
page_name: operationActivityPopupView
target_id: 待补充（申请表未给出）
target_type: popup
target_event: status
target_detail_info: 新用户赠送积分，或其他活动名称
os: windows / macOS
abtest_group: userA, userB
```

```text
功能点名称：活动弹窗-弹窗操作
上报类型：点击按钮/关闭弹窗
功能点id：922610860069
所属页面ID：7561
所属页面名称：网页版Alice
参数：
app_name: windAlice_web
function_name: operationPopup
page_name: operationActivityPopupView
target_id: 待补充（申请表未给出）
target_type: button
target_event: action
target_detail_info: 待补充（建议记录 action_type，如 start_now / close / mask_close / esc_close）
os: windows / macOS
abtest_group: userA, userB
```

# Known Confirmed Events

Use this file for specific 功能点ID values the user has confirmed. Keep general design rules in `SKILL.md`.

<!-- 格式模板：确认一个功能点后，复制以下block并填入实际值

## {模块名}

```text
功能点名称：{功能模块-页面位置-用户操作动作}
上报类型：{点击按钮 / 页面载入 / 业务链路/接口上报 / 反馈上报}
功能点id：{已分配的ID}
参数：
app_name: {windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp}
function_name: {大功能模块}
page_name: {page_name}
target_id: {target_id}
target_type: {target_type}
target_event: {status / action}
target_detail_info: {业务明细}
os: {平台}
```

-->

<!-- 在此行下方追加已确认的事件 -->

## WindAlice Official Website / 官网首页 - final confirmed 2026-09-03

```json
[
  {
    "event_id": "922610860070",
    "page_id": "7842",
    "page_title": "WindAlice官网首页",
    "event_name": "WindAlice官网-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_officialWeb",
    "function_name": "officialWebsite",
    "page_name": "windAliceOfficialWebsite",
    "page_from": "作为运营渠道的填写目标，从URL参数page_from解析",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860071",
    "page_id": "7842",
    "page_title": "WindAlice官网首页",
    "event_name": "WindAlice官网-前往WindAlice",
    "report_type": "点击按钮",
    "app_name": "windAlice_officialWeb",
    "function_name": "officialWebsite",
    "page_name": "windAliceOfficialWebsite",
    "target_id": "goToWindAlice",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860072",
    "page_id": "7842",
    "page_title": "WindAlice官网首页",
    "event_name": "WindAlice官网-下载WindAliceApp",
    "report_type": "点击按钮",
    "app_name": "windAlice_officialWeb",
    "function_name": "officialWebsite",
    "page_name": "windAliceOfficialWebsite",
    "target_id": "downloadWindAliceApp",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860073",
    "page_id": "7842",
    "page_title": "WindAlice官网首页",
    "event_name": "WindAlice官网-前往AliceMarket",
    "report_type": "点击按钮",
    "app_name": "windAlice_officialWeb",
    "function_name": "officialWebsite",
    "page_name": "windAliceOfficialWebsite",
    "target_id": "goToAliceMarket",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860074",
    "page_id": "7842",
    "page_title": "WindAlice官网首页",
    "event_name": "WindAlice官网-前往AliceFeed",
    "report_type": "点击按钮",
    "app_name": "windAlice_officialWeb",
    "function_name": "officialWebsite",
    "page_name": "windAliceOfficialWebsite",
    "target_id": "goToAliceFeed",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
页面载入事件使用轻量参数：app_name / function_name / page_name / page_from / os。
页面载入事件需要 page_from，用于记录运营渠道来源；page_from 从 URL query 参数解析，例如 https://alice.wind.com.cn/chat?page_from=wechatArticleReadMore。
功能按钮事件不需要 page_from，默认只记录功能动作本身。
功能按钮事件使用组件参数：app_name / function_name / page_name / target_id / target_type / target_event / os。
target_detail_info 是可选参数，只在需要记录输入问题、搜索代码、Tab 切换值、具体子项、标的名称等单一业务明细时填写。
普通按钮点击，如前往产品页、下载 App、前往 AliceMarket、前往 AliceFeed，不需要 target_detail_info。
deviceId / userType / currentUrl 属于 SDK 或公共日志字段，不作为本批功能点参数填写。
```

## Recharge Package / 外部提示充值曝光 - final confirmed 2026-09-09

```json
{
  "event_id": "922610860092",
  "event_name": "充值加油包-外部提示充值曝光",
  "app_name": "windAlice_web",
  "function_name": "payment",
  "page_name": "外部提示实际出现的页面，动态枚举，各页面自行上报",
  "target_id": "rechargeHintView",
  "target_type": "exposure",
  "target_event": "status",
  "target_detail_info": "用户看到的付费方案组合，数组String的文字形态",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
外部提示为全局引导组件，可嵌入多个页面，page_name 由各页面自行上报实际出现位置的页面名称（动态枚举，同搜索框规则），不上报逗号拼接字符串。
target_id 使用 rechargeHintView，与支付页面内的付费方案曝光 paidPlanView 区分。
该功能点记录外部引导入口的曝光，可与其后的“进入支付页面”做引导转化分析。
```

## Recharge Package / 付费方案曝光 - final confirmed 2026-09-07

```json
{
  "event_id": "922610860075",
  "event_name": "充值加油包-支付页面-付费方案曝光",
  "app_name": "windAlice_web",
  "function_name": "payment",
  "page_name": "rechargePackagePage",
  "target_id": "paidPlanView",
  "target_type": "exposure",
  "target_event": "status",
  "target_detail_info": "用户看到的付费方案组合，数组String的文字形态",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
该功能点用于记录用户实际曝光到的付费方案组合，独立于进入支付页面/充值加油包页面的页面载入功能点。
target_event 使用 status，表示当前用户看到的方案曝光状态。
target_type 使用 exposure，表示曝光类型。
target_detail_info 记录用户看到的付费方案组合，使用数组 String 的文字形态；建议实现侧保持稳定格式，例如 JSON array string。
该功能点后续可与“选择充值类型”功能点按方案代码或方案名称进行转化分析。
```
## Recharge Package / 充值加油包链路 - confirmed 2026-09-07

```json
[
  {
      {
    "event_id": "922610860092",
    "event_name": "充值加油包-外部提示充值曝光",
    "app_name": "windAlice_web",
    "function_name": "payment",
    "page_name": "外部提示实际出现的页面，动态枚举，各页面自行上报",
    "target_id": "rechargeHintView",
    "target_type": "exposure",
    "target_event": "status",
    "target_detail_info": "用户看到的付费方案组合，数组String的文字形态",
    "os": "windows / macOS"
  },
"event_id": "922610860062",
    "event_name": "充值加油包-进入支付页面",
    "params": [
      {
        "name_cn": "来源",
        "name_en": "source",
        "type": "string"
      },
      {
        "name_cn": "目标",
        "name_en": "target",
        "type": "string"
      }
    ]
  },
  {
    "event_id": "922610860075",
    "event_name": "充值加油包-支付页面-付费方案曝光",
    "app_name": "windAlice_web",
    "function_name": "payment",
    "page_name": "rechargePackagePage",
    "target_id": "paidPlanView",
    "target_type": "exposure",
    "target_event": "status",
    "target_detail_info": "用户看到的付费方案组合，数组String的文字形态",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860061",
    "event_name": "充值加油包-支付页面-选择充值金额",
    "params": [
      {
        "name_cn": "金额",
        "name_en": "price",
        "type": "number"
      },
      {
        "name_cn": "是否自定义",
        "name_en": "isCustom",
        "type": "boolean"
      }
    ]
  }
]
```

Tracking logic:

```text
充值加油包链路包含四个功能点：外部提示充值曝光、进入支付页面、付费方案曝光、选择充值金额。
外部提示充值曝光使用功能点 922610860092，记录外部引导入口的曝光，page_name 为动态枚举，由各页面自行上报。
进入支付页面使用已有参数 source / target，不修改原有逻辑。
付费方案曝光使用新功能点 922610860075，记录用户看到的付费方案组合。
付费方案曝光的 target_detail_info 使用数组 String 的文字形态，不拆成多个参数。
选择充值金额使用已有参数 price / isCustom，不修改原有逻辑。
```
## Chat/Work Conversation Detail / 对话详情 - confirmed 2026-09-07

```json
[
  {
    "event_id": "922610860076",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-页面载入",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "conversationPageView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "对话ID",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860077",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-查看文件",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "viewFile",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "文件ID或文件名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860078",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-下载文件",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "downloadFile",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "文件ID或文件名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860079",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-分享单轮对话",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "shareSingleConversation",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "单轮对话ID",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860039",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-分享完整对话",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "shareFullConversation",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "对话ID",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860080",
    "module": "对话详情",
    "event_name": "Chat/Work-对话详情-分享生成文件",
    "status": "启用",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage",
    "target_id": "shareGeneratedFile",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "文件ID或文件名称",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
这些功能点都发生在 Chat/Work 场景的对话详情页。
同一功能点通过 function_name 和 page_name 区分场景：
Chat 场景：function_name = chat，page_name = chatConversationPage。
Work 场景：function_name = work，page_name = workConversationPage。
页面载入使用 target_event = status。
查看文件、下载文件、分享单轮对话、分享完整对话、分享生成文件使用 target_event = action。
target_detail_info 用于记录对话ID、单轮对话ID、文件ID或文件名称等单一业务明细。
```
## Chat/Work Share Page / 分享页面 - confirmed 2026-09-07

```json
{
  "event_id": "922610860081",
  "page_id": "7847",
  "page_title": "运营页面",
  "event_name": "Chat/Work-分享页面-页面载入",
  "report_type": "页面载入",
  "app_name": "windAlice_h5",
  "function_name": "sharePage",
  "page_name": "singleConversationSharePage, fullConversationSharePage, generatedFileSharePage",
  "target_id": "sharePageView",
  "target_type": "page",
  "target_event": "status",
  "target_detail_info": "分享的页面所带的ID参数",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
该功能点用于记录用户打开 Chat/Work 分享落地页。
app_name 使用 windAlice_h5，表示对外分享落地页。
function_name 使用 sharePage。
page_name 在申请表中填写 singleConversationSharePage, fullConversationSharePage, generatedFileSharePage；实际采集时按分享页类型上报其中一个具体值，不上报逗号拼接字符串。
singleConversationSharePage 表示单轮对话分享页。
fullConversationSharePage 表示完整对话分享页。
generatedFileSharePage 表示生成文件分享页。
target_detail_info 记录分享页面链接携带的 ID 参数。
```


## My Watchlist / 我的自选 - confirmed 2026-09-08

```json
[
  {
    "event_id": "922610860082",
    "page_id": "7845",
    "page_title": "我的自选",
    "event_name": "我的自选-页面载入",
    "app_name": "windAlice_web",
    "function_name": "watchlist",
    "page_name": "myWatchlistPage",
    "target_id": "watchlistPageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860083",
    "page_id": "7845",
    "page_title": "我的自选",
    "event_name": "我的自选-自选列表-查看自选",
    "app_name": "windAlice_web",
    "function_name": "watchlist",
    "page_name": "myWatchlistPage",
    "target_id": "viewWatchlistItem",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "WindCode股票代码",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860084",
    "page_id": "7845",
    "page_title": "我的自选",
    "event_name": "我的自选-自选列表-移除自选",
    "app_name": "windAlice_web",
    "function_name": "watchlist",
    "page_name": "myWatchlistPage",
    "target_id": "removeWatchlistItem",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "WindCode股票代码",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
我的自选模块包含三个功能点：页面载入、查看自选、移除自选。
页面载入使用 target_event = status，查看自选和移除自选使用 target_event = action。
target_detail_info 记录 WindCode股票代码，便于按标的拆分行为分析。
```

## My Portfolio / 我的持仓 - confirmed 2026-09-08

```json
{
  "event_id": "922610860085",
  "page_id": "7849",
  "page_title": "我的持仓",
  "event_name": "我的持仓-页面载入",
  "app_name": "windAlice_web",
  "function_name": "portfolio",
  "page_name": "myPortfolioPage",
  "target_id": "portfolioPageView",
  "target_type": "page",
  "target_event": "status",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
我的持仓模块当前仅一个页面载入功能点，后续持仓相关操作按需追加。
```

## Market Hot Topics / 市场热议 - confirmed 2026-09-08

```json
[
  {
    "event_id": "922610860086",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-页面载入",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "hotTopicsPageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860087",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-查看热议话题",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "viewHotTopic",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "话题名称",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
市场热议模块包含页面载入和查看热议话题两个功能点。
target_detail_info 使用话题名称而非话题ID，便于直接在数据后台查看；后续话题量增大需降噪时再考虑改话题ID。
```

## Search / 搜索 - confirmed 2026-09-08

```json
[
  {
    "event_id": "922610860088",
    "page_id": "7561",
    "page_title": "网页版Alice",
    "event_name": "搜索-输入搜索词",
    "app_name": "windAlice_web",
    "function_name": "search",
    "page_name": "myWatchlistPage, myPortfolioPage, marketHotTopicsPage, chatConversationPage, workConversationPage",
    "target_id": "submitSearch",
    "target_type": "textInput",
    "target_event": "action",
    "target_detail_info": "用户输入的搜索词内容",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860089",
    "page_id": "7561",
    "page_title": "网页版Alice",
    "event_name": "搜索-搜索列表-查看搜索结果",
    "app_name": "windAlice_web",
    "function_name": "search",
    "page_name": "myWatchlistPage, myPortfolioPage, marketHotTopicsPage, chatConversationPage, workConversationPage",
    "target_id": "viewSearchResult",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "WindCode股票代码",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860090",
    "page_id": "7561",
    "page_title": "网页版Alice",
    "event_name": "搜索-搜索列表-加入自选",
    "app_name": "windAlice_web",
    "function_name": "search",
    "page_name": "myWatchlistPage, myPortfolioPage, marketHotTopicsPage, chatConversationPage, workConversationPage",
    "target_id": "addToWatchlist",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "WindCode股票代码",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
搜索框为全局组件，可嵌入多个页面，因此 page_name 为枚举值，由开发按用户实际发起搜索的页面动态上报。
实际采集时从以下枚举中上报其中一个具体值，不上报逗号拼接字符串：
myWatchlistPage / myPortfolioPage / marketHotTopicsPage / chatConversationPage / workConversationPage。
后续若有新页面嵌入搜索框，在此枚举追加新值并回流，不随意新增。
搜索漏斗：输入搜索词 → 查看搜索结果 → 加入自选，三个功能点 page_name 保持一致以便串联同一次搜索会话。
```

## Securities Detail / 单券详情 - confirmed 2026-09-08

```json
{
  "event_id": "922610860091",
  "page_id": "7848",
  "page_title": "单券页面",
  "event_name": "单券详情-页面载入",
  "app_name": "windAlice_web",
  "function_name": "securitiesDetail",
  "page_name": "stockDetailPage, fundDetailPage, indexDetailPage, futureDetailPage...",
  "target_id": "detailPageView",
  "target_type": "page",
  "target_event": "status",
  "target_detail_info": "WindCode股票代码",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
单券详情模块去除 stock 化，function_name 使用 securitiesDetail，target_id 使用 detailPageView，保证可扩展性。
page_name 为枚举值，按证券类型动态上报其中一个具体值，不上报逗号拼接字符串：
stockDetailPage / fundDetailPage / indexDetailPage / futureDetailPage...。
后续新增证券类型按 lower camelCase 在此枚举追加新值并回流，不随意新增。
target_detail_info 记录 WindCode股票代码，用于按标的拆分行为分析。
```

## Market Overview / 盘面概览 - confirmed 2026-09-09

```json
{
  "event_id": "922610860093",
  "page_id": "7850",
  "page_title": "市场热议",
  "event_name": "盘面概览-页面载入",
  "report_type": "页面载入",
  "app_name": "windAlice_web",
  "function_name": "marketOverview",
  "page_name": "marketOverviewPage",
  "target_id": "marketOverviewPageView",
  "target_type": "page",
  "target_event": "status",
  "os": "windows / macOS"
}
```

Tracking logic:

```text
盘面概览为行情概览模块，function_name 使用 marketOverview（原中文名盘面总览，2026-09-10 更名盘面概览）。
所属页面ID 7850，所属页面名称为市场热议（模块 Alice）。
页面载入事件使用 target_event = status，target_type = page，记录用户进入盘面概览页。
参数 7 个：app_name / function_name / page_name / target_id / target_type / target_event / os。
```

## Market Overview / 盘面概览 查看子功能点 - confirmed 2026-09-10

```json
[
  {
    "event_id": "922610860094",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-查看A股核心指数",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "viewAStockCoreIndex",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860095",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-查看板块热力图",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "viewSectorHeatmap",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860096",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-查看热门板块",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "viewHotSector",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860097",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-查看热门股票",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "viewHotStock",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
四个查看类功能点均发生在盘面概览页（marketOverview / marketOverviewPage），所属页面ID 7850。
查看A股核心指数（922610860094）：点击指数卡片，target_detail_info 记录 {windCode}。
查看板块热力图（922610860095）：点击热力图中板块，target_detail_info 记录 {windCode}。
查看热门板块（922610860096）：点击热门板块卡片，target_detail_info 记录 {windCode}。
查看热门股票（922610860097）：点击热门股票卡片，target_detail_info 记录 {windCode}。
target_event 均为 action，target_type 均为 card。
```

## Message Notification / 消息通知 - confirmed 2026-09-14

```json
[
  {
    "event_id": "922610860102",
    "page_id": "7868",
    "page_title": "消息通知",
    "event_name": "消息通知-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "notification",
    "page_name": "messageNotificationPage",
    "target_id": "notificationPageView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "选择的消息类型（task / reminder / system）",
    "os": "windows / macOS",
    "备注": "同一功能点适用于App端，App端上报 app_name=windAlice_app"
  },
  {
    "event_id": "922610860103",
    "page_id": "7868",
    "page_title": "消息通知",
    "event_name": "消息通知-选择消息类型",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "notification",
    "page_name": "messageNotificationPage",
    "target_id": "selectMessageType",
    "target_type": "tab",
    "target_event": "action",
    "target_detail_info": "选择的消息类型（task / reminder / system）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860104",
    "page_id": "7868",
    "page_title": "消息通知",
    "event_name": "消息通知-全部已读",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "notification",
    "page_name": "messageNotificationPage",
    "target_id": "markAllRead",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860105",
    "page_id": "7868",
    "page_title": "消息通知",
    "event_name": "消息通知-查看消息",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "notification",
    "page_name": "messageNotificationPage",
    "target_id": "viewMessage",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "消息ID",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
消息通知模块包含四个功能点：页面载入、选择消息类型、全部已读、查看消息，所属页面ID 7868，所属页面名称 消息通知。
页面载入（922610860102）使用 target_event = status，target_detail_info 记录页面载入时默认选中的消息类型；功能点适用于 Web 与 App 两端，Web 上报 app_name=windAlice_web，App 端上报 app_name=windAlice_app。
选择消息类型（922610860103）使用 target_type = tab，target_detail_info 记录选择的消息类型（task / reminder / system）。
全部已读（922610860104）为普通按钮点击，不填 target_detail_info。
查看消息（922610860105）使用 target_detail_info 记录消息ID。
```

## Market Hot Topics / 市场热议 新功能点 - confirmed 2026-09-15

```json
[
  {
    "event_id": "922610860106",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-热议话题-查看关联指数股票",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "viewTopicRelatedIndexStock",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{windCode} 关联指数或股票代码",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860107",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-热议话题-添加话题到对话",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "addTopicToConversation",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "话题名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860110",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-热议话题-关联股票-加自选",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "addToWatchlist",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860111",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-热议话题-关联股票-添加到对话",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "addStockToConversation",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860112",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "市场热议-热议话题-关联股票-查看详情",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "hotTopics",
    "page_name": "marketHotTopicsPage",
    "target_id": "viewTopicRelatedStock",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "{windCode}",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
市场热议新增五个功能点，均发生在市场热议页（hotTopics / marketHotTopicsPage），所属页面ID 7850。
查看关联指数股票（922610860106）：点击话题下关联指数/股票卡片，target_type=card，target_detail_info 记录 {windCode}。
添加话题到对话（922610860107）：点击话题的"添加到对话"按钮，target_detail_info 记录话题名称，与关联股票添加到对话（addStockToConversation，922610860111）用 target_id 区分业务对象。
关联股票加自选（922610860110）：复用 target_id addToWatchlist（与搜索模块 922610860090 并存，页面枚举实际上报 marketHotTopicsPage），target_detail_info 记录 {windCode}。
关联股票添加到对话（922610860111）：target_detail_info 记录 {windCode}。
关联股票查看详情（922610860112）：点击更多操作中的"查看详情"，随后跳转单券详情页由 detailPageView（922610860091）承接页面载入，此处仅埋点击动作，target_detail_info 记录 {windCode}。
```

## Market Overview / 盘面概览 设置核心指数 - confirmed 2026-09-15

```json
[
  {
    "event_id": "922610860108",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-设置核心指数-进入设置",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "enterCoreIndexSetting",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860109",
    "page_id": "7850",
    "page_title": "市场热议",
    "event_name": "盘面概览-设置核心指数-保存设置",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "marketOverview",
    "page_name": "marketOverviewPage",
    "target_id": "saveCoreIndexSetting",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "保存的核心指数组合，数组String文字形态，ooo, ooo, ooo...",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
盘面概览设置核心指数包含两个功能点，均发生在盘面概览页（marketOverview / marketOverviewPage），所属页面ID 7850。
进入设置（922610860108）：点击打开核心指数设置入口，普通按钮点击，不填 target_detail_info。
保存设置（922610860109）：点击保存设置，target_detail_info 记录保存的核心指数组合，使用数组 String 的文字形态（如 ooo, ooo, ooo...），建议实现侧保持稳定格式。
```

## Automatic Tasks / 自动任务 - confirmed 2026-09-16

```json
[
  {
    "event_id": "922611180001",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-查看全部定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewAllScheduledTasks",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180002",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-查看全部提醒任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewAllReminderTasks",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180003",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-查看定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewScheduledTask",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180004",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-查看提醒任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewReminderTask",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180005",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-创建定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "createScheduledTask",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180006",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-查看定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewScheduledTaskDetail",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180007",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-关闭启用定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "toggleScheduledTaskEnabled",
    "target_type": "switch",
    "target_event": "on, off",
    "target_detail_info": "任务名称",
    "os": "windows / macOS",
    "备注": "开关切换，按实际切换结果上报 target_event: on / off（target_event 已扩展 on/off 枚举）"
  },
  {
    "event_id": "922611180008",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-立即执行定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "runScheduledTaskNow",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180009",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-查看执行记录",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewScheduledExecutionHistory",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180010",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-删除定时任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "deleteScheduledTask",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180011",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务-创建提醒任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "createReminderTask",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180012",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务-查看提醒任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewReminderTaskDetail",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180013",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务-查看执行记录",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "viewReminderExecutionHistory",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180014",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务-删除提醒任务",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "deleteReminderTask",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180015",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-全部定时任务-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "allScheduledTasksView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180016",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-全部提醒任务-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "allReminderTasksView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180017",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务详情-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "scheduledTaskDetailView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180018",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务详情-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "reminderTaskDetailView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180019",
    "page_id": "7911",
    "page_title": "定时任务",
    "event_name": "自动任务-定时任务-执行记录-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "scheduledExecutionHistoryView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611180020",
    "page_id": "7912",
    "page_title": "提醒任务",
    "event_name": "自动任务-提醒任务-执行记录-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "autoTasks",
    "page_name": "autoTasksPage",
    "target_id": "reminderExecutionHistoryView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "任务名称",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
自动任务模块 20 个功能点（001-020），所属页面 7911（定时任务）/ 7912（提醒任务），page_name 统一 autoTasksPage，app_name windAlice_web。
001-014 为点击类（target_event: action），015-020 为页面载入类（target_event: status，target_type: page）。
target_id 区分规则：点击类以 viewXxx 命名，页面载入类以 xxxView 命名。
关闭启用（922611180007）target_event 申请表原值 on, off，Base 单选字段存主值 on，方向说明写入备注。
015/016 为列表级载入（不填 target_detail_info），017-020 为详情/执行记录级载入（填任务名称）。
本批 015-020 为第三批确认（2026-09-16），001-014 前两批已写。
```

## Tool Market / 工具市场 - confirmed 2026-09-16

```json
[
  {
    "event_id": "922611200001",
    "event_name": "工具市场-查看金融专家团",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "expertSquarePage",
    "target_id": "viewExpertSquare",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200002",
    "event_name": "工具市场-金融专家团-页面载入",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "expertSquarePage",
    "target_id": "expertSquarePageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200003",
    "event_name": "工具市场-查看技能广场",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "viewSkillSquare",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200004",
    "event_name": "工具市场-技能广场-页面载入",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "skillSquarePageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200005",
    "event_name": "工具市场-查看专家",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "expertDetailPage",
    "target_id": "viewPanelExpert",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "专家名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200006",
    "event_name": "工具市场-查看技能",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillDetailPage",
    "target_id": "viewPanelSkill",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "技能名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200007",
    "event_name": "工具市场-金融专家团-查看专家",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "expertSquarePage",
    "target_id": "viewExpert",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "专家名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200008",
    "event_name": "工具市场-金融专家团-召唤专家",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "expertSquarePage",
    "target_id": "summonExpert",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "专家名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200009",
    "event_name": "工具市场-技能广场-查看技能",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "viewSkill",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "技能名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200010",
    "event_name": "工具市场-技能广场-启用停用技能",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "toggleSkillEnabled",
    "target_type": "switch",
    "target_event": "on, off",
    "target_detail_info": "技能名称",
    "os": "windows / macOS",
    "备注": "开关切换，Base 单选存主值 on；实际上报按切换结果 on:启用 / off:停用"
  },
  {
    "event_id": "922611200011",
    "event_name": "工具市场-技能广场-立即使用技能",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "useSkill",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "技能名称",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200012",
    "event_name": "工具市场-技能广场-切换分类",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "selectSkillCategory",
    "target_type": "tab",
    "target_event": "action",
    "target_detail_info": "分类名",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200013",
    "event_name": "工具市场-技能广场-创建技能",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "createSkill",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611200014",
    "event_name": "工具市场-技能广场-进入技能学院",
    "app_name": "windAlice_web",
    "function_name": "toolMarket",
    "page_name": "skillSquarePage",
    "target_id": "enterSkillAcademy",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
工具市场模块 14 个功能点（922611200001-014），所属页面 7931（专家）/ 7932（技能），function_name 统一 toolMarket，app_name windAlice_web。
专家所属页面 7931 页面名称「专家」，涵盖 expertSquarePage（金融专家团）与 expertDetailPage（专家详情）；技能所属页面 7932 页面名称「技能」，涵盖 skillSquarePage（技能广场）与 skillDetailPage（技能详情）。
查看金融专家团 / 查看技能广场 / 查看金融专家团为 Panel 抽屉头点击，target_type=accordion，page_name 上报目标页面；目标页面上屏后由对应页面载入功能点承接。
查看专家 / 查看技能 为 Panel 对象区点击进入详情，target_id=viewPanelExpert / viewPanelSkill，page_name 上报详情页。
广场卡片操作（查看专家 viewExpert / 召唤专家 summonExpert / 查看技能 viewSkill / 立即使用 useSkill / 切换分类 selectSkillCategory）page_name 上报所在广场页。
启用停用技能（922611200010）target_event 按切换结果上报 on/off，Base 单选存主值 on，方向写入备注。
target_detail_info 记录专家名称 / 技能名称 / 分类名；无需明细的（Panel 进入、页面载入、创建技能、技能学院）不填。
```

## LINK 客户连结 / 创意市场 / 服务关系 - confirmed 2026-09-16

```json
[
  {
    "event_id": "922610860098",
    "event_name": "Chat/Work-对话详情-点击思考过程卡片",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat / work / Link",
    "page_name": "chatConversationPage / workConversationPage / linkConversationPage",
    "target_id": "toggleThinkingProcessCard",
    "target_type": "button",
    "target_event": "expand / collapse",
    "target_detail_info": "所属消息序号（可选）",
    "os": "windows / macOS",
    "备注": "Base 单选存主值 expand，方向说明写入备注"
  },
  {
    "event_id": "922610860099",
    "event_name": "Chat/Work-对话详情-点击引用溯源",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage / linkConversationPage",
    "target_id": "clickCitationSource",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "引用所在消息序号（可选）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860100",
    "event_name": "Chat/Work-对话详情-打开参考资料列表",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage / linkConversationPage",
    "target_id": "openReferenceList",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922610860101",
    "event_name": "Chat/Work-对话详情-打开参考资料",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat / work",
    "page_name": "chatConversationPage / workConversationPage / linkConversationPage",
    "target_id": "openReference",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "参考类型（data / documentSearch / other）",
    "os": "windows / macOS",
    "备注": "LINK 原参数「参见类型」疑为「参考类型」笔误"
  },
  {
    "event_id": "922611120003",
    "event_name": "Chat首页-搜索框-输入搜索词（LINK搜索）",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "search",
    "page_name": "chatHomePage",
    "target_id": "submitSearch",
    "target_type": "textInput",
    "target_event": "action",
    "target_detail_info": "用户输入的搜索词内容",
    "os": "windows / macOS",
    "备注": "与 922610860088 语义独立，独立建档不合并；target_id 沿用 submitSearch"
  },
  {
    "event_id": "922611120004",
    "event_name": "全局-导航菜单-折叠/展开",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "layout",
    "page_name": "navigationMenu",
    "target_id": "toggleMenu",
    "target_type": "accordion",
    "target_event": "expand / collapse",
    "os": "windows / macOS",
    "备注": "Base 单选存主值 expand，方向说明写入备注"
  },
  {
    "event_id": "922611120002",
    "event_name": "Chat-对话列表-新建对话",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat",
    "page_name": "chatHomePage",
    "target_id": "createConversation",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS",
    "备注": "独立建档，不再做等价事件核查（2026-09-16 用户确认）"
  },
  {
    "event_id": "922611140001",
    "event_name": "Chat首页-抽屉-点击抽屉",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat",
    "page_name": "chatHomePage",
    "target_id": "clickDrawer",
    "target_type": "accordion",
    "target_event": "action",
    "target_detail_info": "favorites / experts / alice（收藏对话 / 专业人士 / Alice）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611140002",
    "event_name": "Chat首页-抽屉-点击对话",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "chat",
    "page_name": "chatHomePage",
    "target_id": "clickDrawerConversation",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{抽屉类型} + {对话ID}（favorites / experts / alice）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160001",
    "event_name": "客户连结-抽屉-点击打开",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkDrawer",
    "target_id": "openCustomerLinkDrawer",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160002",
    "event_name": "客户连结-抽屉-点击客户对话",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkDrawer",
    "target_id": "clickClientConversation",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{客户ID}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160003",
    "event_name": "创意市场-抽屉-点击创意市场",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaMarketDrawer",
    "target_id": "openIdeaMarketDrawer",
    "target_type": "accordion",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160004",
    "event_name": "创意市场-抽屉-点击我的创意",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaMarketDrawer",
    "target_id": "openMyIdeas",
    "target_type": "card",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160005",
    "event_name": "客户连结-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkPage",
    "target_id": "customerLinkPageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160006",
    "event_name": "客户连结-客户列表-点击筛选",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkPage",
    "target_id": "filterClientList",
    "target_type": "tab",
    "target_event": "action",
    "target_detail_info": "pendingFollow / latestActive / allClients（待我关注 / 最新活跃 / 全部客户）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160007",
    "event_name": "客户连结-客户列表-点击客户",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkPage",
    "target_id": "openClientDetail",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{客户ID}",
    "os": "windows / macOS",
    "备注": "LINK 原参数「客户所属类型」与筛选一致，判定为笔误，按「打开客户」语义建模"
  },
  {
    "event_id": "922611160008",
    "event_name": "客户连结-客户列表-点击客户对话记录",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "customerLinkPage",
    "target_id": "viewClientConversationHistory",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "{客户ID}",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160009",
    "event_name": "创意市场-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaMarketPage",
    "target_id": "ideaMarketPageView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160010",
    "event_name": "创意市场-创意列表-点击筛选",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaMarketPage",
    "target_id": "filterIdeaCategory",
    "target_type": "tab",
    "target_event": "action",
    "target_detail_info": "market / stockIndustry / fund / etf / wealth / assetAllocation / knowledge / other（市场/股票与行业/基金/ETF/理财与固收/资产配置/财富知识/其他；「全部」为默认态不单独上报）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160011",
    "event_name": "创意市场-创意列表-点击创意",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaMarketPage",
    "target_id": "openIdea",
    "target_type": "card",
    "target_event": "action",
    "target_detail_info": "market / stockIndustry / fund / etf / wealth / assetAllocation / knowledge / other（市场/股票与行业/基金/ETF/理财与固收/资产配置/财富知识/其他；「全部」为默认态不单独上报）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160012",
    "event_name": "创意市场-创意详情-页面载入",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaDetailPage",
    "target_id": "ideaDetailPageView",
    "target_type": "page",
    "target_event": "status",
    "target_detail_info": "market / stockIndustry / fund / etf / wealth / assetAllocation / knowledge / other（市场/股票与行业/基金/ETF/理财与固收/资产配置/财富知识/其他；「全部」为默认态不单独上报）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160013",
    "event_name": "创意市场-创意详情-点击做同款",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaDetailPage",
    "target_id": "createSimilarIdea",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "market / stockIndustry / fund / etf / wealth / assetAllocation / knowledge / other（市场/股票与行业/基金/ETF/理财与固收/资产配置/财富知识/其他；「全部」为默认态不单独上报）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611160014",
    "event_name": "创意市场-创意详情-点击分享",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "ideaMarket",
    "page_name": "ideaDetailPage",
    "target_id": "shareIdea",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "market / stockIndustry / fund / etf / wealth / assetAllocation / knowledge / other（市场/股票与行业/基金/ETF/理财与固收/资产配置/财富知识/其他；「全部」为默认态不单独上报）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230001",
    "event_name": "服务关系-顾问视角-创意分享落地",
    "report_type": "页面载入",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "advisorViewPage",
    "target_id": "ideaShareLandingView",
    "target_type": "page",
    "target_event": "status",
    "os": "windows / macOS",
    "备注": "语义已确认：页面载入（2026-09-16）"
  },
  {
    "event_id": "922611230002",
    "event_name": "服务关系-顾问视角-上传头像",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "advisorViewPage",
    "target_id": "uploadAvatar",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230003",
    "event_name": "服务关系-顾问视角-编辑名片",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "advisorViewPage",
    "target_id": "editBusinessCard",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230004",
    "event_name": "服务关系-顾问视角-保存名片",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "advisorViewPage",
    "target_id": "saveBusinessCard",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230005",
    "event_name": "服务关系-顾问视角-转发",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "advisorViewPage",
    "target_id": "forwardShare",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS",
    "备注": "与对话详情 share* 语义不同，target_id 独立"
  },
  {
    "event_id": "922611230006",
    "event_name": "服务关系-客户视角-打开创意",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "clientViewPage",
    "target_id": "openSharedIdea",
    "target_type": "card",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230007",
    "event_name": "服务关系-客户视角-上传文件",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "clientViewPage",
    "target_id": "uploadFile",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "image / file / other（图片 / 文件 / 其他）",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230008",
    "event_name": "服务关系-客户视角-点击咨询",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "clientViewPage",
    "target_id": "startConsultation",
    "target_type": "button",
    "target_event": "action",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230009",
    "event_name": "服务关系-客户视角-发送咨询消息",
    "report_type": "点击按钮",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "clientViewPage",
    "target_id": "sendConsultationMessage",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "消息内容",
    "os": "windows / macOS"
  },
  {
    "event_id": "922611230010",
    "event_name": "服务关系-客户视角-绑定手机号",
    "report_type": "业务链路/接口上报",
    "app_name": "windAlice_web",
    "function_name": "link",
    "page_name": "clientViewPage",
    "target_id": "bindPhone",
    "target_type": "button",
    "target_event": "action",
    "target_detail_info": "forceBind / remindBind（强绑定:积分耗完强制 / 弱绑定:首次咨询提醒）",
    "os": "windows / macOS"
  }
]
```

Tracking logic:

```text
LINK 模块 33 个功能点（922610860098-101、922611120002-004、922611140001-002、922611160001-014、922611230001-010），app_name 统一 windAlice_web。
对话详情思考过程卡片（922610860098）与全局导航菜单（922611120004）使用 target_event expand/collapse，Base 单选存主值 expand，方向写入备注。
LINK「搜索」（922611120003）与现有 922610860088 语义独立，独立建档，target_id 沿用 submitSearch。
客户连结复用 function_name=link，创意市场新增 function_name=ideaMarket，全局导航菜单新增 function_name=layout。
服务关系复用 link，顾问视角 page_name=advisorViewPage，客户视角 page_name=clientViewPage。
```
```
```
