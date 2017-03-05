Leo editor Report template
===

This repository use leo editor convert Markdown files to pdf and reveal.js formats.

You can just click a button and generate files.

Installations
===

First, download and install [Leo editor][] and [Pandoc][].

Ubuntu
---

Install TexLive, XeTex and etoolbox by Apt.

    $sudo apt install texlive texlive-xetex etoolbox

Windows
---

Download and install [MikTex].

Search and install etoolbox by MikTex Package Manager.

How to use?
---

Copy `example` node to `project1`.

* Edit Markdown files by Leo editor.
* Use `@button pdf` node to convert pdf by pandoc.
* Use `@button reveal.js` node to convert html by python script in Leo editor. (Remember to save leo file)

[Leo editor]: https://github.com/leo-editor/leo-editor
[Pandoc]: https://github.com/jgm/pandoc/releases/
[MikTex]: http://www.texts.io/support/0002/