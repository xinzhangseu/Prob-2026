---
layout: page
title: 课程资料
permalink: /course-materials/
---

本页汇总课程学习所需的讲义、教材与辅助资源。课程内容以课堂讲授和每讲发布的资料为准。

## 讲义与课件

- [23 讲课程目录]({{ '/lectures/' | relative_url }})：提供适合阅读和打印的 Handout、保留逐步显示效果的课堂 Slide，以及 TeX 源文件。
- [完整课程 GitHub 仓库](https://github.com/{{ site.githubdir }})：浏览或下载课程网站与讲义源文件。
- [教学大纲]({{ '/syllabus/' | relative_url }})：查看学习目标、考核方式、课程进度和作业要求。
- [课程通知]({{ '/announcements/' | relative_url }})：查看作业布置、课程调整和考试安排。

## 作业提交与模板

作业由学生自行组队、以组为单位完成和提交。每组任选仓库提供的 LaTeX 或 Markdown 模板撰写；标题页须列出全部组员的学号和姓名。每次作业须同时提交：

1. 可编辑的源文件（`.tex` 或 `.md`）；
2. 由该源文件生成的最终 PDF 文件。

建议将文件命名为 `HW次数-组号.tex`（或 `.md`）和 `HW次数-组号.pdf`。请勿提交 `.aux`、`.log`、`.out`、`.synctex.gz` 等 LaTeX 辅助文件。具体截止时间和电子提交入口以每次[课程通知]({{ '/announcements/' | relative_url }})为准。

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

## 主要教材

1. 李增沪、张梅、何辉，[《概率论（上册）》](https://xuanshu.hep.com.cn/front/book/findBookDetails?bookId=66d3513a74ce561611bda71d)，高等教育出版社，2025 年，ISBN 978-7-04-063036-7。
2. 张颢，[《概率论》](https://xuanshu.hep.com.cn/front/h5Mobile/bookDetails?bookId=59cc0cdbba9eb884cf815274)，高等教育出版社，2018 年，ISBN 978-7-04-047362-9。
3. 杨振明，[《概率论（第二版）》](https://book.sciencereading.cn/shop/book/Booksimple/show.do?id=BE357DDF8432244B0ADD148975D922E7D000)，科学出版社，2004 年，ISBN 978-7-03-013149-2。
4. 李贤平，[《概率论基础（第三版）》](https://books.google.com/books?id=Gd6MXwAACAAJ)，高等教育出版社，2010 年，ISBN 978-7-04-028890-2。

## 延伸阅读

- Joseph K. Blitzstein、Jessica Hwang，[《概率论导论（翻译版）》](https://www.cmpedu.com/books/book/5585081.htm)（张景肖译），机械工业出版社，2019 年，ISBN 978-7-111-61054-0。
- Dimitri P. Bertsekas、John N. Tsitsiklis，[《概率导论（第二版）》](https://www.mit.edu/~dimitrib/probbook.html)（郑忠国、童行伟译），人民邮电出版社，2009 年；链接为英文原版教材官网。
- A. N. Shiryaev, [*Probability* (2nd ed.)](https://link.springer.com/book/10.1007/978-1-4757-2539-1), Springer, 1996, ISBN 978-1-4757-2539-1.
- 王梓坤，[《科学发现纵横谈》](https://books.google.com/books?id=R_Bg0AEACAAJ)，北京师范大学出版社，2023 年，ISBN 978-7-303-28590-7。

## 学习建议

- 课前浏览课堂 Slide，了解本讲的概念框架；
- 课后使用 Handout 复习定义、定理和证明；
- 与组员共同完成习题，并写出必要的推理与文字说明；
- 对条件概率、多维分布和极限定理等重点内容，通过例题反复练习；
- 如需修改或重新编译讲义，可从讲义页打开相应的 TeX 源文件。

## 使用说明

- `Handout` 版不包含逐步显示，适合阅读、复习和打印；
- `课堂 Slide` 版保留 Beamer 的逐步显示效果，适合课堂演示；
- PDF 可直接在浏览器中打开，也可以下载到本地阅读。
