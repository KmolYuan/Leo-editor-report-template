import os, platform
if platform.system().lower()=="linux": font = "ukai.ttc"
elif platform.system().lower()=="windows": font = "DFKai-SB"
else: font = "Arial"
fontsize = "12"
margin = "1in"
settingFlag = "--latex-engine=xelatex -V lang=chinese -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --filter pandoc-tablenos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2} --bibliography=refer.bib --csl=ieee.csl".format(font, fontsize, margin)
print("---Pandoc---")
os.system("pandoc master.md paragraph*.md reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("PDF 轉換完畢")
print('-'*12)