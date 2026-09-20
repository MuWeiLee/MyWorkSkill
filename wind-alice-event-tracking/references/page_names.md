# function_name / page_name / target_type Reference

Use existing values when they match the feature context. Create a new lower camelCase value only when no existing value fits.

## function_name 已使用的值

```text
（暂无，使用后在此追加）
```

## page_name 已使用的值

```text
（暂无，使用后在此追加）
```

## target_type 已使用的值

```text
button
card
textInput
checkbox
radioButton
tab
switch
tableList
banner
scrollspy
dropdown
accordion
（新增的类型在此追加）
```

## 中文名称 -> 映射

```text
（暂无，使用后在此追加）
```

<!-- 在此行下方追加新的值 -->
## Alice Tutorial / Operation Popup confirmed values

```text
function_name:
onboarding
operationPopup

page_name:
aliceTutorial
operationActivityPopupView

target_type:
page
popup

target_id:
tutorialPageView
selectWorkType
sendRecommendedQuestion
sendCustomQuestion
```

## 中文名称 -> 映射

```text
新手引导 -> function_name: onboarding
新手引导 -> page_name: aliceTutorial
网页版Alice活动弹窗 -> function_name: operationPopup
活动弹窗曝光页 -> page_name: operationActivityPopupView
页面载入 -> target_id: tutorialPageView
点击选择类型 -> target_id: selectWorkType
点击发送推荐问句 -> target_id: sendRecommendedQuestion
用户输入问句发送任务 -> target_id: sendCustomQuestion
```

## WindAlice Official Website confirmed values

```text
app_name:
windAlice_officialWeb

function_name:
officialWebsite

page_name:
windAliceOfficialWebsite

target_type:
page
button

target_id:
officialWebsitePageView
goToWindAlice
downloadWindAliceApp
goToAliceMarket
goToAliceFeed
```

## Chinese name mapping

```text
WindAlice官网首页 -> app_name: windAlice_officialWeb
WindAlice官网首页 -> function_name: officialWebsite
WindAlice官网首页 -> page_name: windAliceOfficialWebsite
WindAlice官网-页面载入 -> target_id: officialWebsitePageView
WindAlice官网-前往WindAlice -> target_id: goToWindAlice
WindAlice官网-下载WindAliceApp -> target_id: downloadWindAliceApp
WindAlice官网-前往AliceMarket -> target_id: goToAliceMarket
WindAlice官网-前往AliceFeed -> target_id: goToAliceFeed
```

## Recharge Package / Paid Plan Exposure confirmed values

```text
app_name:
windAlice_web

function_name:
payment

page_name:
rechargePackagePage

target_type:
exposure

target_id:
paidPlanView
rechargeHintView
```

## Chinese name mapping

```text
充值加油包 -> function_name: payment
充值加油包 -> page_name: rechargePackagePage
充值加油包-支付页面-付费方案曝光 -> target_id: paidPlanView
充值加油包-外部提示充值曝光 -> target_id: rechargeHintView
付费方案曝光 -> target_type: exposure
```
## Chat/Work Conversation Detail confirmed values

```text
app_name:
windAlice_web

function_name:
chat
work

page_name:
chatConversationPage
workConversationPage

target_type:
page
button

target_id:
conversationPageView
viewFile
downloadFile
shareSingleConversation
shareFullConversation
shareGeneratedFile
```

## Chinese name mapping

```text
Chat/Work-对话详情 -> app_name: windAlice_web
Chat/Work-对话详情 -> function_name: chat / work
Chat/Work-对话详情 -> page_name: chatConversationPage / workConversationPage
Chat/Work-对话详情-页面载入 -> target_id: conversationPageView
Chat/Work-对话详情-查看文件 -> target_id: viewFile
Chat/Work-对话详情-下载文件 -> target_id: downloadFile
Chat/Work-对话详情-分享单轮对话 -> target_id: shareSingleConversation
Chat/Work-对话详情-分享完整对话 -> target_id: shareFullConversation
Chat/Work-对话详情-分享生成文件 -> target_id: shareGeneratedFile
```
## Chat/Work Share Page confirmed values

```text
app_name:
windAlice_h5

function_name:
sharePage

page_name:
singleConversationSharePage
fullConversationSharePage
generatedFileSharePage

target_type:
page

target_id:
sharePageView
```

## Chinese name mapping

```text
Chat/Work-分享页面-页面载入 -> app_name: windAlice_h5
Chat/Work-分享页面-页面载入 -> function_name: sharePage
Chat/Work-分享页面-页面载入 -> page_name: singleConversationSharePage / fullConversationSharePage / generatedFileSharePage
Chat/Work-分享页面-页面载入 -> target_id: sharePageView
```


## My Watchlist / My Portfolio / Market Hot Topics / Search / Securities Detail confirmed values

```text
app_name:
windAlice_web

function_name:
watchlist
portfolio
hotTopics
search
securitiesDetail

page_name:
myWatchlistPage
myPortfolioPage
marketHotTopicsPage
stockDetailPage, fundDetailPage, indexDetailPage, futureDetailPage...（单券详情枚举，按证券类型动态上报其中一个）
搜索 page_name 枚举：myWatchlistPage / myPortfolioPage / marketHotTopicsPage / chatConversationPage / workConversationPage（按入口页面动态上报其中一个）

target_type:
（无新增，复用已有 page / card / button / textInput）

target_id:
watchlistPageView
viewWatchlistItem
removeWatchlistItem
portfolioPageView
hotTopicsPageView
viewHotTopic
viewTopicRelatedIndexStock
addTopicToConversation
addToWatchlist
addStockToConversation
viewTopicRelatedStock
submitSearch
viewSearchResult
detailPageView
```

## Chinese name mapping

```text
我的自选 -> function_name: watchlist
我的自选 -> page_name: myWatchlistPage
我的自选-页面载入 -> target_id: watchlistPageView
我的自选-自选列表-查看自选 -> target_id: viewWatchlistItem
我的自选-自选列表-移除自选 -> target_id: removeWatchlistItem

我的持仓 -> function_name: portfolio
我的持仓 -> page_name: myPortfolioPage
我的持仓-页面载入 -> target_id: portfolioPageView

市场热议 -> function_name: hotTopics
市场热议 -> page_name: marketHotTopicsPage
市场热议-页面载入 -> target_id: hotTopicsPageView
市场热议-查看热议话题 -> target_id: viewHotTopic
市场热议-热议话题-查看关联指数股票 -> target_id: viewTopicRelatedIndexStock
市场热议-热议话题-添加话题到对话 -> target_id: addTopicToConversation
市场热议-热议话题-关联股票-加自选 -> target_id: addToWatchlist
市场热议-热议话题-关联股票-添加到对话 -> target_id: addStockToConversation
市场热议-热议话题-关联股票-查看详情 -> target_id: viewTopicRelatedStock

搜索 -> function_name: search
搜索 -> page_name: 枚举值，按入口页面动态上报（myWatchlistPage / myPortfolioPage / marketHotTopicsPage / chatConversationPage / workConversationPage）
搜索-输入搜索词 -> target_id: submitSearch
搜索-搜索列表-查看搜索结果 -> target_id: viewSearchResult
搜索-搜索列表-加入自选 -> target_id: addToWatchlist

单券详情 -> function_name: securitiesDetail
单券详情 -> page_name: 枚举值，按证券类型动态上报（stockDetailPage / fundDetailPage / indexDetailPage / futureDetailPage...）
单券详情-页面载入 -> target_id: detailPageView
```

## 枚举值管理规则

```text
WindAlice 的 page_name 采用枚举值管理，不随意新增：
- 搜索框为全局组件，page_name 从已嵌入搜索的页面枚举中动态上报其中一个具体值。
- 单券详情按证券类型，page_name 从证券类型枚举中动态上报其中一个具体值。
- 后续新增页面嵌入搜索框或新增证券类型时，在 references 中追加新值并回流，不在采集侧随意新建。
```

## Market Overview / 盘面概览 confirmed values

```text
app_name:
windAlice_web

function_name:
marketOverview

page_name:
marketOverviewPage

target_type:
page
card

target_id:
marketOverviewPageView
viewAStockCoreIndex
viewSectorHeatmap
viewHotSector
viewHotStock
enterCoreIndexSetting
saveCoreIndexSetting
```

## Chinese name mapping

```text
盘面概览 -> function_name: marketOverview
盘面概览页 -> page_name: marketOverviewPage
盘面概览-页面载入 -> target_id: marketOverviewPageView
盘面概览-查看A股核心指数 -> target_id: viewAStockCoreIndex
盘面概览-查看板块热力图 -> target_id: viewSectorHeatmap
盘面概览-查看热门板块 -> target_id: viewHotSector
盘面概览-查看热门股票 -> target_id: viewHotStock
盘面概览-设置核心指数-进入设置 -> target_id: enterCoreIndexSetting
盘面概览-设置核心指数-保存设置 -> target_id: saveCoreIndexSetting
```

## 协同工作 / 自动任务 / 文件资料 / 会议 confirmed values

```text
function_name:
collaboration
autoTasks
fileCenter
meeting

page_name:
collaborationPage
autoTasksPage
fileCenterPage
meetingPage

target_id:
collaborationPageView
autoTasksPageView
fileCenterPageView
meetingPageView
```

## Chinese name mapping

```text
协同工作 -> function_name: collaboration
协同工作 -> page_name: collaborationPage
协同工作-页面载入 -> target_id: collaborationPageView

自动任务 -> function_name: autoTasks
自动任务 -> page_name: autoTasksPage
自动任务-页面载入 -> target_id: autoTasksPageView
自动任务已确认 target_id（2026-09-16，所属页面 7911 定时任务 / 7912 提醒任务）：
点击类（target_event: action）：
viewAllScheduledTasks / viewAllReminderTasks（target_type: accordion）
viewScheduledTask / viewReminderTask / viewScheduledTaskDetail / viewReminderTaskDetail
createScheduledTask / createReminderTask
toggleScheduledTaskEnabled（target_event: on/off）
runScheduledTaskNow / viewScheduledExecutionHistory / deleteScheduledTask
viewReminderExecutionHistory / deleteReminderTask
页面载入类（target_event: status，target_type: page）：
allScheduledTasksView / allReminderTasksView
scheduledTaskDetailView / reminderTaskDetailView
scheduledExecutionHistoryView / reminderExecutionHistoryView

文件资料 -> function_name: fileCenter
文件资料 -> page_name: fileCenterPage
文件资料-页面载入 -> target_id: fileCenterPageView

会议 -> function_name: meeting
会议 -> page_name: meetingPage
会议-页面载入 -> target_id: meetingPageView
```

## Message Notification / 消息通知 confirmed values

```text
app_name:
windAlice_web
windAlice_app

function_name:
notification

page_name:
messageNotificationPage

target_type:
（无新增，复用已有 page / tab / button / card）

target_id:
notificationPageView
selectMessageType
markAllRead
viewMessage
```

## Chinese name mapping

```text
消息通知 -> function_name: notification
消息通知 -> page_name: messageNotificationPage
消息通知-页面载入 -> target_id: notificationPageView
消息通知-选择消息类型 -> target_id: selectMessageType
消息通知-全部已读 -> target_id: markAllRead
消息通知-查看消息 -> target_id: viewMessage
```

## Tool Market / 工具市场 confirmed values

```text
app_name:
windAlice_web

function_name:
toolMarket

page_name:
expertSquarePage
expertDetailPage
skillSquarePage
skillDetailPage

target_type:
（无新增，复用已有 page / card / button / tab / switch / accordion）

target_id:
viewExpertSquare
expertSquarePageView
viewSkillSquare
skillSquarePageView
viewPanelExpert
viewPanelSkill
viewExpert
summonExpert
viewSkill
toggleSkillEnabled
useSkill
selectSkillCategory
createSkill
enterSkillAcademy
```

## Chinese name mapping

```text
工具市场 -> function_name: toolMarket
金融专家团（专家广场） -> page_name: expertSquarePage
专家详情 -> page_name: expertDetailPage
技能广场 -> page_name: skillSquarePage
技能详情 -> page_name: skillDetailPage

工具市场-查看金融专家团 -> target_id: viewExpertSquare
工具市场-金融专家团-页面载入 -> target_id: expertSquarePageView
工具市场-查看技能广场 -> target_id: viewSkillSquare
工具市场-技能广场-页面载入 -> target_id: skillSquarePageView
工具市场-查看专家 -> target_id: viewPanelExpert
工具市场-查看技能 -> target_id: viewPanelSkill
工具市场-金融专家团-查看专家 -> target_id: viewExpert
工具市场-金融专家团-召唤专家 -> target_id: summonExpert
工具市场-技能广场-查看技能 -> target_id: viewSkill
工具市场-技能广场-启用停用技能 -> target_id: toggleSkillEnabled
工具市场-技能广场-立即使用技能 -> target_id: useSkill
工具市场-技能广场-切换分类 -> target_id: selectSkillCategory
工具市场-技能广场-创建技能 -> target_id: createSkill
工具市场-技能广场-进入技能学院 -> target_id: enterSkillAcademy
```

## LINK 客户连结 / 创意市场 / 服务关系 confirmed values（2026-09-16）

```text
app_name:
windAlice_web

function_name:
link（客户连结 / 服务关系，复用）
ideaMarket（创意市场，新增）
layout（全局导航菜单，新增）

page_name:
对话来源动态枚举：chatHomePage / aliceConversationPage / linkClientConversationPage / linkAdvisorConversationPage / linkRemixPage / workConversationPage / meetingPage / otherConversationPage
chatHomePage（对话首页，新建对话 / 私人助理抽屉共用）
aliceConversationPage（对话来源-Alice）
linkClientConversationPage（对话来源-Link-客户）
linkAdvisorConversationPage（对话来源-Link-顾问）
linkRemixPage（对话来源-Link-做同款）
otherConversationPage（对话来源-其他）
linkConversationPage（Link对话详情页）
customerLinkDrawer（客户连结抽屉）
customerLinkPage（客户连结页）
ideaMarketDrawer（创意市场抽屉）
ideaMarketPage（创意市场页）
ideaDetailPage（创意详情页）
advisorViewPage（顾问视角页）
clientViewPage（客户视角页）
navigationMenu（导航菜单）

target_type:
（无新增，复用已有 page / button / card / tab / accordion / textInput）

target_event（新增 expand / collapse）：
status / action / on / off / expand / collapse

target_id:
toggleThinkingProcessCard
clickCitationSource
openReferenceList
openReference
toggleMenu
createConversation
clickDrawer
clickDrawerConversation
openCustomerLinkDrawer
clickClientConversation
openIdeaMarketDrawer
openMyIdeas
customerLinkPageView
filterClientList
openClientDetail
viewClientConversationHistory
ideaMarketPageView
filterIdeaCategory
openIdea
ideaDetailPageView
createSimilarIdea
shareIdea
ideaShareLandingView
uploadAvatar
editBusinessCard
saveBusinessCard
forwardShare
openSharedIdea
uploadFile
startConsultation
sendConsultationMessage
bindPhone
```

## Chinese name mapping

```text
客户连结 -> function_name: link
创意市场 -> function_name: ideaMarket
全局导航菜单 -> function_name: layout

对话详情-点击思考过程卡片 -> target_id: toggleThinkingProcessCard（target_event expand/collapse）
对话详情-点击引用溯源 -> target_id: clickCitationSource
对话详情-打开参考资料列表 -> target_id: openReferenceList
对话详情-打开参考资料 -> target_id: openReference
导航菜单-折叠/展开 -> target_id: toggleMenu（target_event expand/collapse）
对话列表-新建对话 -> target_id: createConversation
对话首页-抽屉-点击抽屉 -> target_id: clickDrawer
对话首页-抽屉-点击对话 -> target_id: clickDrawerConversation
客户连结-抽屉-点击打开 -> target_id: openCustomerLinkDrawer
客户连结-抽屉-点击客户对话 -> target_id: clickClientConversation
创意市场-抽屉-点击创意市场 -> target_id: openIdeaMarketDrawer
创意市场-抽屉-点击我的创意 -> target_id: openMyIdeas
客户连结-页面载入 -> target_id: customerLinkPageView
客户连结-客户列表-点击筛选 -> target_id: filterClientList
客户连结-客户列表-点击客户 -> target_id: openClientDetail
客户连结-客户列表-点击客户对话记录 -> target_id: viewClientConversationHistory
创意市场-页面载入 -> target_id: ideaMarketPageView
创意市场-创意列表-点击筛选 -> target_id: filterIdeaCategory
创意市场-创意列表-点击创意 -> target_id: openIdea
创意市场-创意详情-页面载入 -> target_id: ideaDetailPageView
创意市场-创意详情-点击做同款 -> target_id: createSimilarIdea
创意市场-创意详情-点击分享 -> target_id: shareIdea
服务关系-顾问视角-创意分享落地 -> target_id: ideaShareLandingView
服务关系-顾问视角-上传头像 -> target_id: uploadAvatar
服务关系-顾问视角-编辑名片 -> target_id: editBusinessCard
服务关系-顾问视角-保存名片 -> target_id: saveBusinessCard
服务关系-顾问视角-转发 -> target_id: forwardShare
服务关系-客户视角-打开创意 -> target_id: openSharedIdea
服务关系-客户视角-上传文件 -> target_id: uploadFile
服务关系-客户视角-点击咨询 -> target_id: startConsultation
服务关系-客户视角-发送咨询消息 -> target_id: sendConsultationMessage
服务关系-客户视角-绑定手机号 -> target_id: bindPhone
```
