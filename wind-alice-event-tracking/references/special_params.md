# Special Tracking Parameters

## WindAlice Official Website / Landing Page Attribution

Observed function point:

```text
WindAlice官网-页面载入
WindAlice官网-前往WindAlice
WindAlice官网-下载WindAliceApp
WindAlice官网-前往AliceMarket
WindAlice官网-前往AliceFeed
```

Observed fields:

```text
page_from
```

Notes:

- `page_from`: external channel source parsed from the current URL query string.
- Use `page_from` as the unified channel attribution parameter for WindAlice official website and landing-page links.
- Do not use `referrer` for this business attribution field, because it can be confused with browser referrer semantics.
- Example: `https://alice.wind.com.cn/chat?page_from=wechatArticleReadMore`

Most click/page-load events use the standard fields in `SKILL.md`. Use this reference when the event is a system, API, session, website, or feedback event.

<!-- 格式模板：遇到非UI类事件时，记录其功能点名称和使用的特殊字段

## {事件类别}

Observed function point:

```text
{功能点名称}
```

Observed fields:

```text
{字段1}
{字段2}
...
```

Notes:

- {字段1}: {说明}
- {字段2}: {说明}

-->

<!-- 在此行下方追加已确认的特殊参数事件 -->

## WindAlice Official Website Attribution Clarification

```text
page_from is required for WindAlice official website page-load events.
Functional button/CTA events do not need page_from by default.
Use target_detail_info only for a single concrete business detail, such as user input, search code, tab switching value, sub-item, target name, activity name, or selected value.
Plain official website CTA clicks usually do not need target_detail_info.
```
