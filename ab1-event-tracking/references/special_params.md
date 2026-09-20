# Special Tracking Parameters

Most click/page-load events use the standard AB1 fields in `SKILL.md`. Use this reference when the event is a system, API, session, website, or feedback event.

## Conversation Send

Observed function point:

```text
对话-发送对话
```

Observed fields:

```text
app_name
os
agentId
questionId
question
api
apiTime
apiErrorMessage
request
response
timestamp
channel
model
page_name
```

Notes:

- `questionId`: 问题ID
- `question`: 问题文本
- `api`: 接口名称
- `apiTime`: 请求耗时
- `apiErrorMessage`: 错误信息
- `request`: 请求参数
- `response`: 响应数据
- `timestamp`: 发送时间
- `channel`: 发送通道，例如 WindClaw、ClawBot、DingDing、FeiShu
- Existing `page_name` example: `windClawSession, stockSectorDetail`

## Session And Result Reuse

Observed function points:

```text
会话记录
结果复用
```

Observed fields:

```text
会话记录: agentId, question, contextId, time, title, taskId
结果复用: actionType, taskId
```

## Feedback

Observed function point:

```text
赞踩
```

Observed fields:

```text
question
answer
appRaise
feedbackType
detailedFeedback
intention
taskId
```

## Website And Startup

Observed function points:

```text
系统启动
官网-页面浏览
官网-点击下载
```

Observed fields:

```text
系统启动: app_name, os, version
官网-页面浏览: os, source, type, link_type, target_id
官网-点击下载: target_id, source, os
```

Notes:

- `source`: browser source such as safari or chrome
- `type`: external campaign/search parameter, historically described as 百度参数
- `link_type`: website link type; historical table says a detailed mapping table is not yet recorded
- `target_id` for website download can be values like `window`, `macAppleSilicon`, `macIntel`
