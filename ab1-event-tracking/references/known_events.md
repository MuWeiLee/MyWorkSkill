# Known Confirmed Events

Use this file for specific 功能点ID values the user has confirmed. Keep general design rules in `SKILL.md`.

## Share

```text
功能点名称：单券行情-分享单券-打开分享弹窗
上报类型：点击按钮
功能点id：922609640153
参数：
page_name: securitySectorDetail
target_type: button
target_id: openShareSecurityPopup
target_detail_info: {WindCode单券代码}
app_name: windClaw
os: mac, windows
```

## Operation

```text
功能点名称：运营-奖励中心-页面载入
上报类型：页面载入
功能点id：922609640154
参数：
page_name: operationRewardCenter
os: mac, windows
```

```text
功能点名称：运营-奖励中心-完成任务
上报类型：点击按钮
功能点id：922609640155
参数：
page_name: operationRewardCenter
target_type: button
target_id: completeRewardTask
target_detail_info: {任务名称}
app_name: windClaw
os: mac, windows
```

```text
功能点名称：运营-奖励中心-顶部Banner查看积分
上报类型：点击按钮
功能点id：922609640156
参数：
page_name: operationRewardCenter
target_type: banner
target_id: checkCredit
app_name: windClaw
os: mac, windows
```

```text
功能点名称：运营-奖励中心-顶部任务
上报类型：点击按钮
功能点id：922609640157
参数：
page_name: operationRewardCenter
target_type: button
target_id: topTask
target_detail_info: {任务名称}
app_name: windClaw
os: mac, windows
```

```text
功能点名称：个人中心-积分-奖励中心
上报类型：点击按钮
功能点id：922609640158
参数：
page_name: userCenter
target_type: button
target_id: rewardCenter
app_name: windClaw
os: mac, windows
```

## External Finance Cards

```text
功能点名称：外部服务-单券行情-单券卡片载入
上报类型：页面载入
功能点id：922609640159
所属模块：服务
状态：启用
参数：
page_name: externalFinanceCard
target_type: card
target_id: stockQuoteCard, fundQuoteCard
target_detail_info: {WindCode单券代码}
app_name: xiaomi, huawei, doubao
os: iOS, android, harmonyOS
```

```text
功能点名称：外部服务-标的列表-标的列表卡片载入
上报类型：页面载入
功能点id：922609640160
所属模块：服务
状态：启用
参数：
page_name: externalFinanceCard
target_type: card
target_id: securityListCard
target_detail_info: {WindCode单券代码数组}
app_name: xiaomi, huawei, doubao
os: iOS, android, harmonyOS
```

```text
功能点名称：外部服务-资讯列表-资讯列表卡片载入
上报类型：页面载入
功能点id：922609640161
所属模块：服务
状态：启用
参数：
page_name: externalFinanceCard
target_type: card
target_id: infoListCard
target_detail_info: {doc_id列表}
app_name: xiaomi, huawei, doubao
os: iOS, android, harmonyOS
```
