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
<v t="40323230.20170305201307.1"><vh>@settings</vh>
<v t="40323230.20170305201307.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="40323230.20170305201307.3"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="40323230.20170305201307.4"><vh>@int max-pre-loaded-body-chars = 0</vh></v>
<v t="40323230.20170305201307.5"><vh>PDF Output settings</vh></v>
<v t="40323230.20170305201307.6"><vh>HTML Output settings</vh>
<v t="40323230.20170305201307.7"><vh>def</vh></v>
</v>
<v t="40323230.20170305201307.8"><vh>Customize CSS content</vh></v>
<v t="40323230.20170305201307.9"><vh>&lt;Pager-mark&gt;</vh></v>
<v t="40323230.20170305201307.10"><vh>&lt;Section-mark&gt;</vh></v>
</v>
<v t="40323230.20170305201626.1" a="E"><vh>@path ../example</vh>
<v t="40323230.20170305210044.1" a="E"><vh>example</vh>
<v t="40323230.20170305202607.1"><vh>@button example pdf</vh>
<v t="40323230.20170305201307.5"></v>
</v>
<v t="40323230.20170305203454.1" a="E"><vh>@button example reveal.js</vh>
<v t="40323230.20170305201307.6"></v>
</v>
<v t="40323230.20170305201723.1"><vh>@clean example.md</vh>
<v t="40323230.20170305201959.1"><vh>Cover</vh></v>
<v t="40323230.20170305202239.1"><vh>First Chapter</vh>
<v t="40323230.20170305201307.10"></v>
<v t="40323230.20170305202345.1"><vh>First section</vh></v>
<v t="40323230.20170305201307.10"></v>
<v t="40323230.20170305202935.1"><vh>Second section</vh></v>
</v>
<v t="40323230.20170305201307.9"></v>
<v t="40323230.20170305202712.1"><vh>Second Chapter</vh>
<v t="40323230.20170305201307.10"></v>
<v t="40323230.20170305203018.1"><vh>First section</vh></v>
<v t="40323230.20170305201307.10"></v>
<v t="40323230.20170305203032.1"><vh>Second section</vh></v>
</v>
</v>
<v t="40323230.20170305203703.1" a="E"><vh>@clean ../reveal.js/example.html</vh>
<v t="40323230.20170305203744.1"><vh>HTML UP</vh></v>
<v t="40323230.20170305201307.8"></v>
<v t="40323230.20170305203813.1"><vh>example Target node</vh></v>
<v t="40323230.20170305203854.1"><vh>HTML DOWN</vh></v>
</v>
</v>
</v>
<v t="40323230.20170305205824.1" a="E"><vh>@path ../markdown</vh>
<v t="40323230.20170305205901.1"><vh>project1</vh></v>
</v>
<v t="40323230.20170305204258.1" a="E"><vh>Readme</vh>
<v t="40323230.20170305204318.1"><vh>@edit ../README.md</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170305201307.1"></t>
<t tx="40323230.20170305201307.10">@language md
&lt;!--===--&gt;

</t>
<t tx="40323230.20170305201307.2">@language css
QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    font-family: SansSerif;
    /*font-family: DejaVu Sans Mono;*/
    /*font-family:YaHei Mono;*/
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
    font-family: YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="40323230.20170305201307.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="40323230.20170305201307.4"></t>
<t tx="40323230.20170305201307.5">@language python
import os, platform
if platform.system().lower()=="linux": font = "教育部標準楷書"
elif platform.system().lower()=="windows": font = "DFKai-SB"
else: font = "Arial"
fontsize = "12"
margin = "1in"
settingFlag = "--latex-engine=xelatex --toc -V documentclass=report --filter pandoc-fignos --template=../pdf/template.tex -V \"mainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2}".format(font, fontsize, margin)
print("---")
os.system("pandoc {0}.md -o ../pdf/{0}.pdf {1}".format(filename, settingFlag))
g.es("{} PDF conversion is complete.".format(filename))</t>
<t tx="40323230.20170305201307.6">@language python
@others
pList = [e for e in c.all_positions()]
nList = [e.h for e in c.all_nodes()]
bList = [e.b for e in c.all_nodes()]
Istart = nList.index("@clean {}.md".format(filename))
Iend = nList.index("@clean ../reveal.js/{}.html".format(filename))
pos = nList.index("{} Target node".format(filename))
B = bList[Istart:Iend]
P = pList[pos]
B[0] = B[0].replace("%", "##")
B = ''.join(B).replace("\n@language md", '').replace("\n@others", '').replace("*@fig:", '').split("\n\n\\newpage")
head = """&lt;section&gt;
&lt;section data-markdown data-separator="^\\n&lt;!--===--&gt;\\n"&gt;
&lt;script type="text/template"&gt;"""
tail = """
&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;
"""
B = [head+e+tail for e in B]
P.b = removeParentheses("@language html\n"+'\n'.join(B))
g.es("{} HTML briefing conversion is complete.".format(filename))</t>
<t tx="40323230.20170305201307.7">def removeParentheses(content):
    while content.find("{")!=-1:
        start = content.find("{")
        end = content.find("}")+1
        result = content[start:end]
        content = content.replace(result, '')
    return content</t>
<t tx="40323230.20170305201307.8">@language html
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
<t tx="40323230.20170305201307.9">@language md
\newpage
</t>
<t tx="40323230.20170305201626.1">This is a markdown file example.</t>
<t tx="40323230.20170305201723.1">@others
</t>
<t tx="40323230.20170305201959.1">% Example software | Version 0.4
% Anonymous
% January, 2017

</t>
<t tx="40323230.20170305202239.1">First Chapter
===

@others
</t>
<t tx="40323230.20170305202345.1">First section
---

This is the first section.

</t>
<t tx="40323230.20170305202607.1">@language python
filename = "example"
@others</t>
<t tx="40323230.20170305202712.1">Second Chapter
===

@others
</t>
<t tx="40323230.20170305202935.1">Second section
---

This is the second section.

</t>
<t tx="40323230.20170305203018.1">First section
---

This is the first section.

</t>
<t tx="40323230.20170305203032.1">Second section
---

This is the second section.

</t>
<t tx="40323230.20170305203454.1">@language python
filename = "example"
@others</t>
<t tx="40323230.20170305203703.1">@language html
@tabwidth -4
@others</t>
<t tx="40323230.20170305203744.1">&lt;!--
這個檔案展示了 reveal.js 投影片資料的基本架構
其中使用 "reveal" class 與 "slides" class 來界定投影片的資料範圍
而各投影片則以 &lt;section&gt;&lt;/section&gt; 標示
且支援平行與垂直的投影片配置方法
--&gt;
&lt;!doctype html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
&lt;meta charset="utf-8"&gt;
&lt;link rel="icon" href="kmol.png"&gt;
&lt;title&gt;Example&lt;/title&gt;
&lt;link rel="stylesheet" href="css/reveal.min.css"&gt;
&lt;link rel="stylesheet" href="css/theme/default.css" id="theme"&gt;
&lt;!--增加對於 IE 早期版本的支援 --&gt;
&lt;!--[if lt IE 9]&gt;
&lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;/head&gt;
&lt;body&gt;</t>
<t tx="40323230.20170305203813.1">@language html
&lt;section&gt;
&lt;section data-markdown data-separator="^\n&lt;!--===--&gt;\n"&gt;
&lt;script type="text/template"&gt;@others
% Example software | Version 0.4
% Anonymous
% January, 2017

First Chapter
===

&lt;!--===--&gt;

First section
---

This is the first section.

&lt;!--===--&gt;

Second section
---

This is the second section.
&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;

&lt;section&gt;
&lt;section data-markdown data-separator="^\n&lt;!--===--&gt;\n"&gt;
&lt;script type="text/template"&gt;
Second Chapter
===

&lt;!--===--&gt;

First section
---

This is the first section.

&lt;!--===--&gt;

Second section
---

This is the second section.


&lt;/script&gt;
&lt;/section&gt;
&lt;/section&gt;
</t>
<t tx="40323230.20170305203854.1">&lt;/div&gt;
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
<t tx="40323230.20170305204258.1"></t>
<t tx="40323230.20170305205824.1">Markdown folder</t>
<t tx="40323230.20170305205901.1"></t>
<t tx="40323230.20170305210044.1"></t>
</tnodes>
</leo_file>
