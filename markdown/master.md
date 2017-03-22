---
university_zh: '國立虎尾科技大學'
institute_zh: '機械設計系'
title_zh: '專題研究題目'
title_en: 'Test English Title'
author:
- 設計三乙 XXX 同學
- 設計三乙 XXX 同學
- 設計三乙 XXX 同學
- 設計三乙 XXX 同學
advisor_zh: '嚴家銘'
date: '中華民國 106 年 6 月'
---

---
abstract: |
    這裡是摘要內容。
    
    + 以 YAML 的方式插入。
    + 使用 Markdown 語法。
    
    本研究的重點在於 ...
---

大標題一
===

大標題一 的概要

前言內容。

\ 

一個範例數學式：$$\beta=\cos^{-1}{\frac{L0^{2}+d_{AB}^{2}-R0^{2}}{2\times{L0\times{d_{AB}}}}}$$

\ 

關於數學式可以參考這裡：[http://www.hostmath.com/][]

[http://www.hostmath.com/]: http://www.hostmath.com/

提及了某篇刊物[@myart]在這裡。

大標題二
===

大標題二 的概要

小標題2.1
---

小標題2.1 的內容

有一張圖片：

![Kmol][]

稱為圖 {@fig:駱駝}。

[Kmol]: ../kmol.png {#fig:駱駝}

小標題2.2
---

小標題2.2 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

