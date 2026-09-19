---
layout: page
title: 课程资料
permalink: /course-materials/
---

本页汇总课程学习所需的讲义、教材与辅助资源。课程内容以课堂讲授和每讲发布的资料为准。

## 讲义与课件

- <a href="{{ '/Lectures/Prob-All.pdf' | relative_url }}" target="_blank" rel="noopener">概率论完全版Slide (全部23讲）</a>：适合阅读和打印。
- [23 讲课程目录]({{ '/lectures/' | relative_url }})：提供适合阅读和打印的 Handout、保留逐步显示效果的课堂 Slide，以及 TeX 源文件。
- [完整课程 GitHub 仓库](https://github.com/{{ site.githubdir }})：浏览或下载课程网站与讲义源文件。
- [教学大纲]({{ '/syllabus/' | relative_url }})：查看学习目标、考核方式、课程进度和作业要求。
- [课程通知]({{ '/announcements/' | relative_url }})：查看作业布置、课程调整和考试安排。

## 课件源文件与编译说明 {#lecture-compilation}

<a href="{{ '/Lectures/Prob-All.tex' | relative_url }}" download="Prob-All.tex">下载统一主文件 Prob-All.tex</a>

各讲源文件 `L01.tex`–`L23.tex` 使用 `\documentclass[Prob-All.tex]{subfiles}`，从 `Prob-All.tex` 继承文档设置、宏包和公共命令。因此，即使只编译其中一讲，也需要下载 `Prob-All.tex`，并将它与该讲源文件放在同一目录。

编译还需要同目录中的 `beamerthemenankai.sty` 主题文件和 `figures/` 图片目录。建议[下载完整课程仓库](https://github.com/{{ site.githubdir }}/archive/refs/heads/master.zip)，解压后保留 `Lectures/` 的目录结构。请安装包含 XeLaTeX、Beamer、`xeCJK` 和 `subfiles` 的 TeX 发行版，并确保主文件指定的 Fandol 系列字体和 Times New Roman 可用。

在 `Lectures/` 目录中，以第 4 讲为例运行：

```bash
xelatex L04.tex
```

单讲源文件开头的 `\PassOptionsToClass{handout}{beamer}` 保持注释时，生成保留逐步显示效果的 Slide；取消注释时，生成适合阅读和打印的 Handout。两种方式默认都输出 `L04.pdf`，如需同时保留，请将 Slide 版另存为 `L04-S.pdf`。

编译全部 23 讲时，需要保留所有单讲源文件，并运行 `xelatex Prob-All.tex`。目录或交叉引用未更新时，可再编译一次。

## 主要教材

1. 李增沪、张梅、何辉，[《概率论（上册）》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAS8JK1olWAUFUV5aAU4RAl8IHlkcVQUGVm4ZVxNJXF9RXh5UHw0cSgYYXBcIWDoXSQVJQwYHVldVC08VHDZNRwYlFn9cIg5edT93AzdsYB1xGWVrUwwCaEcbM244GFoXVAIEUFheAHsnA2g4STUdVQ4CXFxeDUgfBF8JK1sTVA4FV15YDU0eAmo4HFscbVZfFgYPURFHXDBSK2slXjYFVFdJDjlWUXsOaWslXTYBZF5cCEoTBmoMGlIcQQYGUldUClcXBWYAHFgVWAYLXFZVOEkWAmsBK2vL0LZpJiAvWk5TaydAeA1yHVsCitPtGSBuC28IGEolBFMHNjkvbhZDBwx6eQJJIF95EiEvahJLcWdVYCYQMwRLBgUPXklIcxByYVxJInVJEW5YOEsRA204Gms)，高等教育出版社，2025 年。
2. 张颢，[《概率论》](https://xuanshu.hep.com.cn/front/h5Mobile/bookDetails?bookId=59cc0cdbba9eb884cf815274)，高等教育出版社，2018 年。
3. 杨振明，[《概率论（第二版）》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAS4JK1olWAUFUV5aAU4RAl8IGVIRXwcEV24ZVxNJXF9RXh5UHw0cSgYYXBcIWDoXSQVJQwYAXVpfCU0UHDZNRwYlCFkcCVYabRF1HT8NbzxhNlUGICM-TkcbM244GFoXVAIEUFheAHsnA2g4STUdVQ4CXFxeDUgfBF8JK1sTVA4FV19VDEsSCmo4HFscbVZfFgYPURFHXDBSK2slXjYFVFdJDjlWUXsOaWslXTYBZF5cCEoTBmoMHV8cQQYDV1tcClcXBWYAHFgUVQUAUFtdOEkWAmsBK2vL0LZ1Jyc9d09AAWlfRBtmOlZ3itPtGTl8A2sNCmtyBVl0NlkZTAgUBg1-ZR0WFHtHCTwrdg10QSxLSQR7X29wHAMLAAxFUDNUYiFRKnIHZFttCE0XAV8JKw)，科学出版社，2004 年。
4. 李贤平，[《概率论基础（第四版）》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAS8JK1olWAUFUV5ZAEMTBl8IHlwRWQ4GVG4ZVxNJXF9RXh5UHw0cSgYYXBcIWDoXSQVJQwYHU1pZAE8XHDZNRwYlWQ4DEh0UWwN3AQ1jZjhmBmR7Li4mXkcbM244GFoXVAIEUFheAHsnA2g4STUdVQ4CXFxeDUgfBF8JK1sTVA4FV15eCkwVBGg4HFscbVZfFgYPURFHXDBSK2slXjYFVFdJDjlWUXsOaWslXTYBZF5cCEMVAW0AHl4QQQYCVV9cDVcXBWYAHFgVXgcFXFZVOEkWAmsBK2vL0LZmIysEeExCAC5BQCxXWl1AitPtGTdgAW0AGkolFEcHH14OY0hlQ2lvUF1sFER2CBs6Q01uUThfQQ8QMwR4KR8udyASeglBUiF8HWBrKG5YOEsRA204Gms)，高等教育出版社，2026 年。

## 延伸阅读

- Joseph K. Blitzstein、Jessica Hwang，[《概率论导论（翻译版）》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAS8JK1olWAUFUV9ZDk8QAV8IGF8QXwQHXW4ZVxNJXF9RXh5UHw0cSgYYXBcIWDoXSQVJQwYBUFtfCk4eHDZNRwYlFmZwSipaCxR0YSd3YB8RHEJdVjcZXkcbM244GFoXVAIEUFheAHsnA2g4STUdVQ4CXFxeDUgfBF8JK1sTVA4FV19bDUkXBW84HFscbVZfFgYPURFHXDBSK2slXjYFVFdJDjlWUXsOaWslXTYBZF5cCEoQB2wNGlsRQQYFVllZDFcXBWYAHFgUWwQLU11cOEkWAmsBK2vL0LZnUFYCfTtICwx7TFNvGGAAitPtGTlnA2sPH0olNkEHPSZZXCtzZDV1cj5VW3Z7KQkgYS5XZhp7Y1IQMwRkIBg2cBNRWR1NXitwA3BBJG5YOEsRA204Gms)（张景肖译），机械工业出版社，2019 年。
- Dimitri P. Bertsekas、John N. Tsitsiklis，[《概率导论（第二版）》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BATgJK1olXwIEVF9YDUsUBF8IGlsXXgIHUFteCEIVAV9MRANLAjZbERscSkAJHTdNTwcKBlMdBgABFksWA20LH14RWAUCXVxfFxJSXzI4TwtcOnBUPwY-aSlrRXV-aQ92DVN6JFJROEonAG4KEl8TWQABXG5tCEwnQgEIElwXXQACUm5cOEsRCmcPGFsRWAUGVl1tD0seMz9VWQNHBFxSCwEHOHsnAF8PG1IBW3RDBkpbensnA18LK1sUXQ4BVF5cDEMSH28JHFoSWhoCUldVD0gXB24OEloUbQQDVVpUOHvJjt94aV1sNHJ-CwdddE9zUTRQxdalTHp1XVxfDFonQy4NXhN8VEcBNRc1TT5PBTR1GTx9GHNaLR4DVhYSbW1zYTlcKwdGVzw0fytPQjp3a2sQbQYEVFxtCXs)（郑忠国、童行伟译），人民邮电出版社，2009 年。
- A. N. Shiryaev, [*Probability* (2nd ed.)](https://link.springer.com/book/10.1007/978-1-4757-2539-1), Springer, 1996.
- 王梓坤，[《科学发现纵横谈》](https://union-click.jd.com/jdc?e=618%7Cpc%7C&p=JF8BAS8JK1olWAUFUV9ZDk8QAV8IGF4XXAIKVG4ZVxNJXF9RXh5UHw0cSgYYXBcIWDoXSQVJQwYBUVxcDEMXHDZNRwYlR095JjoCelV0AitUewFmNUZ6LgsKTkcbM244GFoXVAIEUFheAHsnA2g4STUdVQ4CXFxeDUgfBF8JK1sTVA4FV15bCEseA2k4HFscbVZfFgYPURFHXDBSK2slXjYFVFdJDjlWUXsOaWslXTYBZF5cCEoSC24ME10VQQYBXFdYCFcXBWYAHFgVWgMDV1pZOEkWAmsBK2vL0LZ4XSghWj4UZS16fRhSK1N3itPtGTdzB28JHkolAkBiKwsLCCweBjJ9ZBpeD2djLFwodwpcWilqfVh1MwRWFypVTD0UQGsIGxpMNUMKUm5YOEsRA204Gms)，北京师范大学出版社，2023 年。

## 学习建议

- 课前浏览课堂 Slide，了解本讲的概念框架；
- 课后使用 Handout 复习定义、定理和证明；
- 按课程要求完成习题，并写出必要的推理与文字说明；
- 对条件概率、多维分布和极限定理等重点内容，通过例题反复练习；
- 如需修改或重新编译讲义，可从讲义页打开相应的 TeX 源文件。



## 作业提交与 AI 批改

本课程作业由 AI 批改。请关注微信公众号**「数你最灵」**，作业提交、AI 批改和结果查看等操作均在手机端完成，无需通过电子邮箱提交 PDF 或源文件。

学生端完整使用手册已挂载至微信公众号**「数你最灵」**。请在首次使用前阅读完整手册，并按照公众号内的指引完成操作。每次作业的具体内容和截止时间以课程通知为准。

### 模板下载

- [LaTeX 作业模板（`.tex`）]({{ '/_homework-template/homework-template.tex' | relative_url }})
- [Markdown 作业模板（`.md`）]({{ '/_homework-template/homework-template.md' | relative_url }})
- [LaTeX 模板示例 PDF]({{ '/_homework-template/homework-template.pdf' | relative_url }})
- [在 GitHub 中查看完整模板目录](https://github.com/{{ site.githubdir }}/tree/master/_homework-template)

### LaTeX 编译与字体

LaTeX 模板必须使用 XeLaTeX 编译。首次编译前，请下载并安装 `_assets/fonts` 目录中的字体：

- [NSimSun]({{ '/_assets/fonts/NSimSun.TTF' | relative_url }})
- [SimHei]({{ '/_assets/fonts/SimHei.ttf' | relative_url }})
- [Microsoft YaHei]({{ '/_assets/fonts/msyh.ttf' | relative_url }})
- [楷体 GB2312]({{ '/_assets/fonts/楷体_GB2312.ttf' | relative_url }})

安装字体并重新启动 LaTeX 编辑器后，在模板所在目录运行：

```bash
xelatex homework-template.tex
```

如需学习 LaTeX 的基本使用与排版方法，可参考以下资料：

- [《雷太赫排版系统简介》（包太雷，2013）]({{ '/_assets/包太雷 - 2013 - 雷太赫排版系统简介.pdf' | relative_url }})
- [《大家来学 LaTeX》（李果正，2004）]({{ '/_assets/李果正 - 2004 - 大家来学Latex.pdf' | relative_url }})

如使用 Markdown 模板，可通过支持数学公式的 Markdown 编辑器或 Pandoc 导出 PDF；提交前应检查公式、中文字体和分页是否显示正常。
