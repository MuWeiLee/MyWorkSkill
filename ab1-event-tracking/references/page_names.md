# AB1/WindClaw page_name Reference

Use existing values when they match the feature context. Create a new lower camelCase `page_name` only when no existing value fits.

Observed from 20260512 and later function point Excel files:

```text
agentSquare
character
competition
competitionDetail
connect
conversation
creditPaidList
creditPlan
creditUsage
editMission
externalFinanceCard
forum
frameworkTab
hotIssue
login
mission
mySkills
navigation
operationInvitation
operationRewardCenter
recommendMission
securitySectorDetail
setting
skill
skills
stockSectorDetail
userCenter
watchlist
agent
```

Known mappings:

```text
Agent广场 -> agentSquare
Agent龙虾广场 -> agent
特性/龙虾特性 -> character
大赛/模拟大赛 -> competition
赛事详情/模拟大赛赛事详情 -> competitionDetail
连接/连线 -> connect
对话 -> conversation
积分订单 -> creditPaidList
购买积分页面/积分方案 -> creditPlan
积分流水 -> creditUsage
编辑任务 -> editMission
外部平台金融卡片 -> externalFinanceCard
论坛/龙虾坛 -> forum
顶部导航页签框架 -> frameworkTab
热门话题 -> hotIssue
登录 -> login
任务列表 -> mission
我的技能 -> mySkills
顶部栏/导航 -> navigation
运营邀请用户 -> operationInvitation
运营奖励中心 -> operationRewardCenter
推荐任务 -> recommendMission
单券行情/单券详情 -> securitySectorDetail
设置 -> setting
技能广场页面 -> skill
技能列表/技能广场 -> skills
个股板块详情 -> stockSectorDetail
个人中心 -> userCenter
我的关注/自选列表 -> watchlist
```

Special observed case:

```text
对话发送链路 -> windClawSession, stockSectorDetail
```

Use this only when reproducing that existing API/reporting event. For ordinary UI events on the conversation page, use `conversation`.

Current new-event convention:

```text
app_name: windClaw
```

Historical tables may contain `ab1Claw，windClaw`; do not copy multi-value app names for new requirements unless the user explicitly asks for backward compatibility.
