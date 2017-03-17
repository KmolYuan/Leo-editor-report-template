<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ahshoe.20161120121808.1" a="E"><vh>@settings</vh>
<v t="ahshoe.20170315212615.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="ahshoe.20170315212626.1"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="ahshoe.20170125122952.1"><vh>PDF 輸出設定</vh></v>
<v t="40323230.20170204161057.1"><vh>HTML 簡報輸出設定</vh>
<v t="40323230.20170204170458.1"><vh>def</vh></v>
</v>
<v t="40323230.20170204174825.3"><vh>自訂的CSS內容</vh></v>
<v t="40323230.20170203120011.1"><vh>&lt;分節記號&gt;</vh></v>
<v t="40323230.20170130135731.1"><vh>@edit template.tex</vh></v>
<v t="ahshoe.20161120122004.1" a="E"><vh>Report</vh>
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh>
<v t="ahshoe.20170125122952.1"></v>
</v>
<v t="40323230.20170204173259.1"><vh>@button Report reveal.js</vh>
<v t="40323230.20170204161057.1"></v>
</v>
<v t="ahshoe.20161120122151.1" a="E"><vh>@clean report.md</vh>
<v t="ahshoe.20170317115820.1"><vh>摘要</vh></v>
<v t="ahshoe.20170129171825.1" a="E"><vh>大標題一</vh>
<v t="ahshoe.20170202131457.1"><vh>前言內容</vh></v>
</v>
<v t="40323230.20170130111322.1"><vh>大標題二</vh>
<v t="40323230.20170203120011.1"></v>
<v t="40323230.20170130111502.1"><vh>小標題2.1</vh></v>
<v t="40323230.20170203120011.1"></v>
<v t="40323230.20170130111455.1"><vh>小標題2.2</vh></v>
</v>
</v>
<v t="ahshoe.20170202112800.1"><vh>@clean reveal.js/report.html</vh>
<v t="40323230.20170204180539.1"><vh>HTML UP</vh></v>
<v t="40323230.20170204174825.3"></v>
<v t="40323230.20170204160943.1"><vh>report Target node</vh></v>
<v t="40323230.20170204180552.1"><vh>HTML DOWN</vh></v>
</v>
</v>
<v t="ahshoe.20170129120932.1"><vh>Readme</vh>
<v t="ahshoe.20170129120858.1"><vh>@edit README.md</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170123213451.1">@language python
filename = "report"
@others</t>
<t tx="40323230.20170130111322.1">大標題二
===

大標題二 的概要

@others
</t>
<t tx="40323230.20170130111455.1">小標題2.2
---

小標題2.2 的內容

</t>
<t tx="40323230.20170130111502.1">小標題2.1
---

小標題2.1 的內容

有一張圖片：

![Kmol][]

稱為圖 @fig:駱駝 。

[Kmol]: ./kmol.png {#fig:駱駝}

</t>
<t tx="40323230.20170203120011.1">@language md
&lt;!--===--&gt;

</t>
<t tx="40323230.20170204160943.1">@language html
&lt;section&gt;
&lt;section data-markdown data-separator="^\n&lt;!--===--&gt;\n"&gt;
&lt;script type="text/template"&gt;## 國立虎尾科技大學
    機械設計系
    專題研究紀錄
## 學生：
    設計三甲 XXX 同學
    設計三甲 XXX 同學
## 中華民國 106 年 6 月
&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;

&lt;section&gt;
&lt;section data-markdown data-separator="^\n&lt;!--===--&gt;\n"&gt;
&lt;script type="text/template"&gt;
大標題1
===

大標題1 的概要

&lt;!--===--&gt;

更詳細的概要
&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;

&lt;section&gt;
&lt;section data-markdown data-separator="^\n&lt;!--===--&gt;\n"&gt;
&lt;script type="text/template"&gt;
大標題2
===

大標題2 的概要

&lt;!--===--&gt;

小標題2.1
---

小標題2.1 的內容

&lt;!--===--&gt;

小標題2.2
---

小標題2.2 的內容


&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;
</t>
<t tx="40323230.20170204161057.1">@language python
@others
pList = [e.copy() for e in c.all_positions()] #節點參照
hList = [e.h for e in c.all_positions()] #索引
MD = pList[hList.index("@clean {}.md".format(filename))]  #找到 Markdown file
pos = hList.index("{} Target node".format(filename)) #目標
B = [e.b for e in MD.self_and_subtree()]
B = ''.join(B).replace("%", "##").replace("\n@language md", '').replace("\n@others", '').replace("@fig:", '').split("\n\n\\newpage")
head = """&lt;section&gt;
&lt;section data-markdown data-separator="^\\n&lt;!--===--&gt;\\n"&gt;
&lt;script type="text/template"&gt;"""
tail = """
&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;
"""
B = [head+e+tail for e in B]
pList[pos].b = removeParentheses("@language html\n"+'\n'.join(B))
g.es("{} HTML 簡報轉換完畢".format(filename))</t>
<t tx="40323230.20170204170458.1">def removeParentheses(content):
    while content.find("{")!=-1:
        start = content.find("{")
        end = content.find("}")+1
        result = content[start:end]
        content = content.replace(result, '')
    return content</t>
<t tx="40323230.20170204173259.1">@language python
filename = "report"
@others</t>
<t tx="40323230.20170204174825.3">@language html
&lt;style&gt;
@language css
.reveal h1 {
  font-size : 50px;
}

.reveal h2 {
  font-size : 45px;
}

.reveal p {
  font-size : 25px;
}

.reveal li {
  font-size : 25px;
}
@language html
&lt;/style&gt;
&lt;div class="reveal"&gt;
&lt;div class="slides"&gt;</t>
<t tx="40323230.20170204180539.1">&lt;!--
這個檔案展示了 reveal.js 投影片資料的基本架構
其中使用 "reveal" class 與 "slides" class 來界定投影片的資料範圍
而各投影片則以 &lt;section&gt;&lt;/section&gt; 標示
且支援平行與垂直的投影片配置方法
--&gt;
&lt;!doctype html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
&lt;meta charset="utf-8"&gt;
&lt;link rel="icon" href="main_big.ico"&gt;
&lt;title&gt;專題題目&lt;/title&gt;
&lt;link rel="stylesheet" href="css/reveal.min.css"&gt;
&lt;link rel="stylesheet" href="css/theme/default.css" id="theme"&gt;
&lt;!--增加對於 IE 早期版本的支援 --&gt;
&lt;!--[if lt IE 9]&gt;
&lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;/head&gt;
&lt;body&gt;</t>
<t tx="40323230.20170204180552.1">&lt;/div&gt;
&lt;/div&gt;
&lt;script src="lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="js/reveal.min.js"&gt;&lt;/script&gt;
&lt;script&gt;
Reveal.initialize({
    dependencies: [
        { src: 'plugin/markdown/marked.js' },
        { src: 'plugin/markdown/markdown.js' },
        { src: 'plugin/notes/notes.js', async: true },
        { src: 'plugin/highlight/highlight.js', async: true, callback: function() {hljs.initHighlightingOnLoad();}}
    ]
});
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;</t>
<t tx="ahshoe.20161120121808.1"></t>
<t tx="ahshoe.20161120122004.1"></t>
<t tx="ahshoe.20161120122151.1">---
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

@others</t>
<t tx="ahshoe.20170125122952.1">@language python
import os, platform
if platform.system().lower()=="linux": font = "ukai.ttc"
elif platform.system().lower()=="windows": font = "DFKai-SB"
else: font = "Arial"
fontsize = "12"
margin = "1in"
settingFlag = "--latex-engine=xelatex -V lang=chinese -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2}".format(font, fontsize, margin)
print("---Pandoc---")
os.system("pandoc {0}.md -o pdf/{0}.pdf {1}".format(filename, settingFlag))
g.es("{} PDF 轉換完畢".format(filename))</t>
<t tx="ahshoe.20170129120932.1"></t>
<t tx="ahshoe.20170129171825.1">大標題一
===

大標題一 的概要

@others
</t>
<t tx="ahshoe.20170202112800.1">@language html
@tabwidth -4
@others</t>
<t tx="ahshoe.20170202131457.1">前言內容。

\ 

一個範例數學式：$$\beta=\cos^{-1}{\frac{L0^{2}+d_{AB}^{2}-R0^{2}}{2\times{L0\times{d_{AB}}}}}$$

\ 

關於數學式可以參考這裡：[http://www.hostmath.com/][]

[http://www.hostmath.com/]: http://www.hostmath.com/
</t>
<t tx="ahshoe.20170315212615.1">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="ahshoe.20170315212626.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="ahshoe.20170317115820.1">---
abstract: |
    這裡是摘要內容。
    
    + 使用 Markdown 語法。
    
    本研究...
---

</t>
</tnodes>
</leo_file>
