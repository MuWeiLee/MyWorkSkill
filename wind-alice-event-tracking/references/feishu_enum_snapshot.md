# 飞书「参数取值规范」本地快照（自动生成，勿手改）

- 同步时间：2026-09-18 11:26:20
- 记录总数：218（Base: https://my.feishu.cn/base/AmaDbLGsEaXwW5sQHhHcWZEOnqb）

> 用法：常规埋点先实时查飞书；断网或 lark-cli 不可用时，直接按本表取值，并交叉参考 page_names.md / known_events.md。

## app_name（7 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| windAlice_app | App | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop |  |
| windAlice_desktop | 桌面客户端 | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop |  |
| windAlice_h5 | H5分享页 | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop |  |
| windAlice_miniApp | 小程序 | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop |  |
| windAlice_officialWeb | WindAlice官网 | 官网 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop | 官网轻量schema专用，页面载入事件附带 page_from 渠道来源 |
| windAlice_pc | PC客户端 | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop |  |
| windAlice_web | 网页版Alice | 通用 | 是 | windAlice_web / windAlice_pc / windAlice_app / windAlice_h5 / windAlice_miniApp / windAlice_officialWeb / windAlice_desktop | 固定枚举值之一 |

## function_name（25 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| autoTasks | 自动任务 | 自动任务 | 否 |  |  |
| autoTasks | 自动任务 | 自动任务 | 否 |  |  |
| chat | Chat | 对话 | 否 |  |  |
| collaboration | 协同工作 | 协同工作 | 否 |  |  |
| collaboration | 协同工作 | 协同工作 | 否 |  |  |
| fileCenter | 文件资料 | 文件资料 | 否 |  |  |
| fileCenter | 文件资料 | 文件资料 | 否 |  |  |
| hotTopics | 市场热议 | 市场热议 | 否 |  |  |
| ideaMarket | 创意市场 | 创意市场 | 否 |  | LINK创意市场为独立市场页，最小新增 |
| layout | 全局菜单 | 全局菜单 | 否 |  | LINK导航菜单折叠/展开 |
| marketOverview | 盘面概览 | 盘面总览 | 否 |  |  |
| meeting | 会议 | 会议 | 否 |  |  |
| meeting | 会议 | 会议 | 否 |  |  |
| notification | 消息通知 | 消息通知 | 否 |  |  |
| officialWebsite | WindAlice官网首页 | 官网 | 否 |  |  |
| onboarding | 新手引导 | 新手引导 | 否 |  |  |
| operationPopup | 网页版Alice活动弹窗 | 活动弹窗 | 否 |  |  |
| payment | 充值加油包 | 充值 | 否 |  |  |
| portfolio | 我的持仓 | 我的持仓 | 否 |  |  |
| search | 搜索 | 搜索 | 否 |  | 搜索框为全局组件，page_name 按入口页面动态上报 |
| securitiesDetail | 单券详情 | 单券详情 | 否 |  | 去 stock 化，保证可扩展性 |
| sharePage | 分享页面 | 分享落地页 | 否 |  |  |
| toolMarket | 工具市场 | 工具市场 | 否 |  |  |
| watchlist | 我的自选 | 我的自选 | 否 |  |  |
| work | Work | 对话 | 否 |  |  |

## page_name（46 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| advisorViewPage | 顾问视角页 | 服务关系 | 否 |  |  |
| aliceConversationPage | 对话来源-Alice | 对话 | 否 |  |  |
| aliceTutorial | 新手引导页 | 新手引导 | 否 |  |  |
| autoTasksPage | 自动任务页 | 自动任务 | 否 |  |  |
| autoTasksPage | 自动任务页 | 自动任务 | 否 |  |  |
| chatConversationPage | Chat对话详情页 | 对话 | 否 |  |  |
| chatHomePage | 对话首页 | 对话 | 否 |  | 对话来源-我的首页/新建对话/私人助理抽屉共用 |
| clientViewPage | 客户视角页 | 服务关系 | 否 |  |  |
| collaborationPage | 协同工作页 | 协同工作 | 否 |  |  |
| collaborationPage | 协同工作页 | 协同工作 | 否 |  |  |
| customerLinkDrawer | 客户连结抽屉 | 客户连结 | 否 |  |  |
| customerLinkPage | 客户连结页 | 客户连结 | 否 |  |  |
| expertDetailPage | 专家详情 | 工具市场 | 否 |  |  |
| expertSquarePage | 金融专家团 | 工具市场 | 否 |  |  |
| fileCenterPage | 文件资料页 | 文件资料 | 否 |  |  |
| fileCenterPage | 文件资料页 | 文件资料 | 否 |  |  |
| fullConversationSharePage | 完整对话分享页 | 分享落地页 | 否 |  |  |
| fundDetailPage | 基金详情页 | 单券详情 | 否 |  |  |
| futureDetailPage | 期货详情页 | 单券详情 | 否 |  |  |
| generatedFileSharePage | 生成文件分享页 | 分享落地页 | 否 |  |  |
| ideaDetailPage | 创意详情页 | 创意市场 | 否 |  |  |
| ideaMarketDrawer | 创意市场抽屉 | 创意市场 | 否 |  |  |
| ideaMarketPage | 创意市场页 | 创意市场 | 否 |  |  |
| indexDetailPage | 指数详情页 | 单券详情 | 否 |  |  |
| linkAdvisorConversationPage | 对话来源-Link-顾问 | 对话 | 否 |  |  |
| linkClientConversationPage | 对话来源-Link-客户 | 对话 | 否 |  |  |
| linkConversationPage | Link对话详情页 | 对话 | 否 |  |  |
| linkRemixPage | 对话来源-Link-做同款 | 对话 | 否 |  |  |
| marketHotTopicsPage | 市场热议页 | 市场热议 | 否 |  |  |
| marketOverviewPage | 盘面概览页 | 盘面总览 | 否 |  |  |
| meetingPage | 会议页 | 会议 | 否 |  |  |
| meetingPage | 会议页 | 会议 | 否 |  |  |
| messageNotificationPage | 消息通知页 | 消息通知 | 否 |  |  |
| myPortfolioPage | 我的持仓页 | 我的持仓 | 否 |  |  |
| myWatchlistPage | 我的自选页 | 我的自选 | 否 |  |  |
| navigationMenu | 导航菜单 | 全局菜单 | 否 |  |  |
| operationActivityPopupView | 活动弹窗曝光页 | 活动弹窗 | 否 |  |  |
| otherConversationPage | 对话来源-其他 | 对话 | 否 |  |  |
| rechargePackagePage | 充值加油包支付页 | 充值 | 否 |  |  |
| singleConversationSharePage | 单轮对话分享页 | 分享落地页 | 否 |  |  |
| skillDetailPage | 技能详情 | 工具市场 | 否 |  |  |
| skillSquarePage | 技能广场 | 工具市场 | 否 |  |  |
| stockDetailPage | 股票详情页 | 单券详情 | 否 |  | 单券详情 page_name 枚举值之一，按证券类型动态上报 |
| windAliceOfficialWebsite | WindAlice官网首页 | 官网 | 否 |  |  |
| workConversationPage | Work对话详情页 | 对话 | 否 |  |  |
| 搜索 page_name 动态枚举集合 | 搜索框所在页面枚举 | 搜索 | 是 | myWatchlistPage / myPortfolioPage / marketHotTopicsPage / chatConversationPage / workConversationPage | 搜索框为全局组件，按用户实际发起搜索的页面动态上报其中一个具体值 |

## target_id（119 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| addStockToConversation | 关联股票添加到对话 | 市场热议 | 否 |  |  |
| addToWatchlist | 搜索-加入自选 | 搜索 | 否 |  |  |
| addTopicToConversation | 添加话题到对话 | 市场热议 | 否 |  |  |
| allReminderTasksView | 自动任务-全部提醒任务-页面载入 | 自动任务 | 否 |  |  |
| allScheduledTasksView | 自动任务-全部定时任务-页面载入 | 自动任务 | 否 |  |  |
| autoTasksPageView | 自动任务-页面载入 | 自动任务 | 否 |  |  |
| autoTasksPageView | 自动任务-页面载入 | 自动任务 | 否 |  |  |
| bindPhone | 服务关系-客户视角-绑定手机号 | 服务关系 | 否 |  |  |
| clickCitationSource | 对话详情-点击引用溯源 | 对话 | 否 |  |  |
| clickClientConversation | 客户连结-抽屉-点击客户对话 | 客户连结 | 否 |  |  |
| clickDrawer | 对话首页-抽屉-点击抽屉 | 对话 | 否 |  |  |
| clickDrawerConversation | 对话首页-抽屉-点击对话 | 对话 | 否 |  |  |
| collaborationPageView | 协同工作-页面载入 | 协同工作 | 否 |  |  |
| collaborationPageView | 协同工作-页面载入 | 协同工作 | 否 |  |  |
| conversationPageView | 对话详情-页面载入 | 对话 | 否 |  |  |
| createConversation | 对话列表-新建对话 | 对话 | 否 |  |  |
| createReminderTask | 自动任务-提醒任务-创建提醒任务 | 自动任务 | 否 |  |  |
| createScheduledTask | 自动任务-定时任务-创建定时任务 | 自动任务 | 否 |  |  |
| createSimilarIdea | 创意市场-创意详情-点击做同款 | 创意市场 | 否 |  |  |
| createSkill | 工具市场-技能广场-创建技能 | 工具市场 | 否 |  |  |
| customerLinkPageView | 客户连结-页面载入 | 客户连结 | 否 |  |  |
| deleteReminderTask | 自动任务-提醒任务-删除提醒任务 | 自动任务 | 否 |  |  |
| deleteScheduledTask | 自动任务-定时任务-删除定时任务 | 自动任务 | 否 |  |  |
| detailPageView | 单券详情-页面载入 | 单券详情 | 否 |  |  |
| downloadFile | 对话详情-下载文件 | 对话 | 否 |  |  |
| downloadWindAliceApp | WindAlice官网-下载WindAliceApp | 官网 | 否 |  |  |
| editBusinessCard | 服务关系-顾问视角-编辑名片 | 服务关系 | 否 |  |  |
| enterCoreIndexSetting | 进入核心指数设置 | 盘面概览 | 否 |  |  |
| enterSkillAcademy | 工具市场-技能广场-进入技能学院 | 工具市场 | 否 |  |  |
| expertSquarePageView | 工具市场-金融专家团-页面载入 | 工具市场 | 否 |  |  |
| fileCenterPageView | 文件资料-页面载入 | 文件资料 | 否 |  |  |
| fileCenterPageView | 文件资料-页面载入 | 文件资料 | 否 |  |  |
| filterClientList | 客户连结-客户列表-点击筛选 | 客户连结 | 否 |  |  |
| filterIdeaCategory | 创意市场-创意列表-点击筛选 | 创意市场 | 否 |  |  |
| forwardShare | 服务关系-顾问视角-转发 | 服务关系 | 否 |  |  |
| goToAliceFeed | WindAlice官网-前往AliceFeed | 官网 | 否 |  |  |
| goToAliceMarket | WindAlice官网-前往AliceMarket | 官网 | 否 |  |  |
| goToWindAlice | WindAlice官网-前往WindAlice | 官网 | 否 |  |  |
| hotTopicsPageView | 市场热议-页面载入 | 市场热议 | 否 |  |  |
| ideaDetailPageView | 创意市场-创意详情-页面载入 | 创意市场 | 否 |  |  |
| ideaMarketPageView | 创意市场-页面载入 | 创意市场 | 否 |  |  |
| ideaShareLandingView | 服务关系-顾问视角-创意分享落地 | 服务关系 | 否 |  |  |
| markAllRead | 消息通知-全部已读 | 消息通知 | 否 |  |  |
| marketOverviewPageView | 盘面概览-页面载入 | 盘面总览 | 否 |  |  |
| meetingPageView | 会议-页面载入 | 会议 | 否 |  |  |
| meetingPageView | 会议-页面载入 | 会议 | 否 |  |  |
| notificationPageView | 消息通知-页面载入 | 消息通知 | 否 |  |  |
| officialWebsitePageView | WindAlice官网-页面载入 | 官网 | 否 |  |  |
| openClientDetail | 客户连结-客户列表-点击客户 | 客户连结 | 否 |  |  |
| openCustomerLinkDrawer | 客户连结-抽屉-点击打开 | 客户连结 | 否 |  |  |
| openIdea | 创意市场-创意列表-点击创意 | 创意市场 | 否 |  |  |
| openIdeaMarketDrawer | 创意市场-抽屉-点击创意市场 | 创意市场 | 否 |  |  |
| openMyIdeas | 创意市场-抽屉-点击我的创意 | 创意市场 | 否 |  |  |
| openReference | 对话详情-打开参考资料 | 对话 | 否 |  |  |
| openReferenceList | 对话详情-打开参考资料列表 | 对话 | 否 |  |  |
| openSharedIdea | 服务关系-客户视角-打开创意 | 服务关系 | 否 |  |  |
| paidPlanView | 充值加油包-付费方案曝光 | 充值 | 否 |  |  |
| portfolioPageView | 我的持仓-页面载入 | 我的持仓 | 否 |  |  |
| rechargeHintView | 充值加油包-外部提示充值曝光 | 充值 | 否 |  |  |
| reminderExecutionHistoryView | 自动任务-提醒任务-执行记录-页面载入 | 自动任务 | 否 |  |  |
| reminderTaskDetailView | 自动任务-提醒任务详情-页面载入 | 自动任务 | 否 |  |  |
| removeWatchlistItem | 我的自选-移除自选 | 我的自选 | 否 |  |  |
| rewardPopupAction | 活动弹窗-弹窗操作 | 活动弹窗 | 否 |  |  |
| rewardPopupView | 活动弹窗-弹窗曝光 | 活动弹窗 | 否 |  |  |
| runScheduledTaskNow | 自动任务-定时任务-立即执行定时任务 | 自动任务 | 否 |  |  |
| saveBusinessCard | 服务关系-顾问视角-保存名片 | 服务关系 | 否 |  |  |
| saveCoreIndexSetting | 保存核心指数设置 | 盘面概览 | 否 |  |  |
| scheduledExecutionHistoryView | 自动任务-定时任务-执行记录-页面载入 | 自动任务 | 否 |  |  |
| scheduledTaskDetailView | 自动任务-定时任务详情-页面载入 | 自动任务 | 否 |  |  |
| selectMessageType | 消息通知-选择消息类型 | 消息通知 | 否 |  |  |
| selectSkillCategory | 工具市场-技能广场-切换分类 | 工具市场 | 否 |  |  |
| selectWorkType | 新手引导-点击选择类型 | 新手引导 | 否 |  |  |
| sendConsultationMessage | 服务关系-客户视角-发送咨询消息 | 服务关系 | 否 |  |  |
| sendCustomQuestion | 新手引导-用户输入问句发送任务 | 新手引导 | 否 |  |  |
| sendRecommendedQuestion | 新手引导-点击发送推荐问句 | 新手引导 | 否 |  |  |
| shareFullConversation | 对话详情-分享完整对话 | 对话 | 否 |  |  |
| shareGeneratedFile | 对话详情-分享生成文件 | 对话 | 否 |  |  |
| shareIdea | 创意市场-创意详情-点击分享 | 创意市场 | 否 |  |  |
| sharePageView | 分享页面-页面载入 | 分享落地页 | 否 |  |  |
| shareSingleConversation | 对话详情-分享单轮对话 | 对话 | 否 |  |  |
| skillSquarePageView | 工具市场-技能广场-页面载入 | 工具市场 | 否 |  |  |
| startConsultation | 服务关系-客户视角-点击咨询 | 服务关系 | 否 |  |  |
| submitSearch | 搜索-输入搜索词 | 搜索 | 否 |  |  |
| summonExpert | 工具市场-金融专家团-召唤专家 | 工具市场 | 否 |  |  |
| toggleMenu | 导航菜单-折叠/展开 | 全局菜单 | 否 |  |  |
| toggleScheduledTaskEnabled | 自动任务-定时任务-关闭启用定时任务 | 自动任务 | 否 |  |  |
| toggleSkillEnabled | 工具市场-技能广场-启用停用技能 | 工具市场 | 否 |  |  |
| toggleThinkingProcessCard | 对话详情-点击思考过程卡片 | 对话 | 否 |  |  |
| tutorialPageView | 新手引导-页面载入 | 新手引导 | 否 |  |  |
| uploadAvatar | 服务关系-顾问视角-上传头像 | 服务关系 | 否 |  |  |
| uploadFile | 服务关系-客户视角-上传文件 | 服务关系 | 否 |  |  |
| useSkill | 工具市场-技能广场-立即使用技能 | 工具市场 | 否 |  |  |
| viewAStockCoreIndex | 盘面概览-查看A股核心指数 | 盘面概览 | 否 |  |  |
| viewAllReminderTasks | 自动任务-查看全部提醒任务 | 自动任务 | 否 |  |  |
| viewAllScheduledTasks | 自动任务-查看全部定时任务 | 自动任务 | 否 |  |  |
| viewClientConversationHistory | 客户连结-客户列表-点击客户对话记录 | 客户连结 | 否 |  |  |
| viewExpert | 工具市场-金融专家团-查看专家 | 工具市场 | 否 |  |  |
| viewExpertSquare | 工具市场-查看金融专家团 | 工具市场 | 否 |  |  |
| viewFile | 对话详情-查看文件 | 对话 | 否 |  |  |
| viewHotSector | 盘面概览-查看热门板块 | 盘面概览 | 否 |  |  |
| viewHotStock | 盘面概览-查看热门股票 | 盘面概览 | 否 |  |  |
| viewHotTopic | 市场热议-查看热议话题 | 市场热议 | 否 |  |  |
| viewMessage | 消息通知-查看消息 | 消息通知 | 否 |  |  |
| viewPanelExpert | 工具市场-查看专家 | 工具市场 | 否 |  |  |
| viewPanelSkill | 工具市场-查看技能 | 工具市场 | 否 |  |  |
| viewReminderExecutionHistory | 自动任务-提醒任务-查看执行记录 | 自动任务 | 否 |  |  |
| viewReminderTask | 自动任务-查看提醒任务 | 自动任务 | 否 |  |  |
| viewReminderTaskDetail | 自动任务-提醒任务-查看提醒任务 | 自动任务 | 否 |  |  |
| viewScheduledExecutionHistory | 自动任务-定时任务-查看执行记录 | 自动任务 | 否 |  |  |
| viewScheduledTask | 自动任务-查看定时任务 | 自动任务 | 否 |  |  |
| viewScheduledTaskDetail | 自动任务-定时任务-查看定时任务 | 自动任务 | 否 |  |  |
| viewSearchResult | 搜索-查看搜索结果 | 搜索 | 否 |  |  |
| viewSectorHeatmap | 盘面概览-查看板块热力图 | 盘面概览 | 否 |  |  |
| viewSkill | 工具市场-技能广场-查看技能 | 工具市场 | 否 |  |  |
| viewSkillSquare | 工具市场-查看技能广场 | 工具市场 | 否 |  |  |
| viewTopicRelatedIndexStock | 查看关联指数股票 | 市场热议 | 否 |  |  |
| viewTopicRelatedStock | 查看关联股票详情 | 市场热议 | 否 |  |  |
| viewWatchlistItem | 我的自选-查看自选 | 我的自选 | 否 |  |  |
| watchlistPageView | 我的自选-页面载入 | 我的自选 | 否 |  |  |

## target_type（15 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| accordion | 手风琴抽屉 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion | 新增类型，用于面板抽屉头展开 |
| banner | 横幅 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| button | 按钮 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| card | 卡片 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| checkbox | 复选框 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| dropdown | 下拉菜单 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| exposure | 曝光 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion | 新增类型，用于付费方案曝光 |
| page | 页面 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion | 新增类型，用于页面载入事件 |
| popup | 弹窗 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion | 新增类型，用于活动弹窗 |
| radioButton | 单选按钮 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| scrollspy | 滚动监听 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| switch | 开关 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| tab | Tab切换 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| tableList | 表格列表 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |
| textInput | 文本输入 | 通用 | 是 | button / card / textInput / checkbox / radioButton / tab / switch / tableList / banner / scrollspy / dropdown / page / popup / exposure / accordion |  |

## target_event（6 条）

| 取值 | 中文名称 | 所属模块 | 是否枚举 | 枚举集合 | 备注 |
| --- | --- | --- | --- | --- | --- |
| action | 状态变化 | 通用 | 是 | status / action / on / off / expand / collapse | 上报用户交互或系统转换导致的状态变化 |
| collapse | 折叠 | 通用 | 是 |  | 折叠/展开场景，按点击后的实际状态上报 |
| expand | 展开 | 通用 | 是 |  | 折叠/展开场景，按点击后的实际状态上报 |
| off | 开关关闭 | 通用 | 是 | status / action / on / off / expand / collapse | 开关切换后处于关闭状态 |
| on | 开关打开 | 通用 | 是 | status / action / on / off / expand / collapse | 开关切换后处于开启状态 |
| status | 当前状态快照 | 通用 | 是 | status / action / on / off / expand / collapse | 上报当前状态，例如页面载入、初始状态、当前选择 |