# 概率论（Prob-2026）

本仓库用于维护东南大学数学学院 2026 年秋季学期概率论课程网站及配套讲义。

- 课程主页：<https://xinzhangseu.github.io/Prob-2026/>
- 授课教师：张鑫
- 课程编号：B0700082 / B0700083
- 上课地点：九龙湖校区 J2-109
- 联系邮箱：[x.zhang.seu@gmail.com](mailto:x.zhang.seu@gmail.com)

## 课程内容

课程以概率的公理化体系为主线，内容包括随机事件与概率空间、条件概率与独立性、随机变量及其分布、多维分布、随机变量函数的分布、数字特征、母函数与特征函数、随机变量的收敛性、大数定律和中心极限定理。

课程共 16 周，每周 2 次课，共 32 次课。详细安排请查看[教学大纲](https://xinzhangseu.github.io/Prob-2026/syllabus/)。

## 网站栏目

- [教学大纲](https://xinzhangseu.github.io/Prob-2026/syllabus/)：课程信息、学习目标、成绩构成、作业要求、参考书目及 16 周教学进度。
- [课程资料](https://xinzhangseu.github.io/Prob-2026/course-materials/)：教材、延伸阅读、学习建议和课程资源说明。
- [课程讲义](https://xinzhangseu.github.io/Prob-2026/lectures/)：23 讲 Handout、课堂 Slide 和 TeX 源文件。
- [课程通知](https://xinzhangseu.github.io/Prob-2026/announcements/)：作业布置、调课、资料更新及考试通知。

## 讲义文件

全部讲义位于 [`Lectures/`](Lectures/)：

| 文件 | 用途 |
| --- | --- |
| `L01.tex`–`L23.tex` | 各讲 Beamer 源文件 |
| `L01.pdf`–`L23.pdf` | Handout 版，取消逐步显示，适合阅读和打印 |
| `L01-S.pdf`–`L23-S.pdf` | Slide 版，保留逐步显示，适合课堂演示 |
| `Prob-All.tex` | 统一导言及整套讲义编译入口 |
| `Prob-All.pdf` | 整套 Handout |
| `Prob-All-S.pdf` | 整套课堂 Slide |
| `figures/` | 讲义使用的图片资源 |
| `beamerthemenankai.sty` | Beamer 主题样式 |

每讲源文件使用 `subfiles` 继承统一导言。讲义页的文件信息由 [`_data/lectures.yml`](_data/lectures.yml) 统一维护。

## 编译讲义

讲义使用 XeLaTeX 编译。请先安装包含 XeLaTeX、`xeCJK`、Beamer 和 `subfiles` 的 TeX 发行版，并在 `Lectures` 目录中执行命令。

### 编译整套讲义

```bash
cd Lectures
xelatex Prob-All.tex
```

如目录或交叉引用尚未更新，可连续编译两次。

### 编译单讲

例如编译第 4 讲：

```bash
cd Lectures
xelatex L04.tex
```

> 注意：当前 23 个单讲源文件的 `\documentclass[...]{subfiles}` 仍引用旧文件名 `Main-Prob-All.tex`，而本仓库中的统一主文件名为 `Prob-All.tex`。直接编译单讲前，应先将该参数统一改为 `Prob-All.tex`；整套讲义从 `Prob-All.tex` 编译不受影响。

### Handout 与 Slide

每讲文件开头保留以下接口：

```tex
% \PassOptionsToClass{handout}{beamer}
```

- 保持注释：生成保留逐步显示的 Slide 版，发布时命名为 `Lxx-S.pdf`；
- 取消注释：生成不含逐步显示的 Handout 版，文件名保持为 `Lxx.pdf`。

提交仓库时保留 `.tex` 和最终 `.pdf`，LaTeX 辅助文件已由 [`.gitignore`](.gitignore) 排除。

## 本地预览课程网站

网站使用 Jekyll 构建。在仓库根目录运行：

```bash
jekyll serve --host 127.0.0.1 --port 4000
```

然后访问：

<http://127.0.0.1:4000/Prob-2026/>

也可以单独构建网站：

```bash
jekyll build
```

生成的 `_site/` 目录仅用于本地预览，不纳入版本控制。推送到 `master` 分支后，GitHub Pages 会自动构建并部署网站。

## 更新课程内容

### 更新讲义目录

1. 将新的 `.tex`、Handout PDF 和 Slide PDF 放入 `Lectures/`；
2. 在 [`_data/lectures.yml`](_data/lectures.yml) 中更新主题、摘要和文件名；
3. 本地检查 `/Prob-2026/lectures/` 页面中的三个资源链接。

### 发布课程通知或作业

在 `_posts/` 中新建符合 `YYYY-MM-DD-title.md` 命名规则的文件。例如：

```yaml
---
layout: post
title: "第 02 次作业｜条件概率（截止：2026-09-24）"
date: 2026-09-17 19:00:00 +0800
author: 张鑫
categories:
  - 作业
---
```

作业正文建议依次包含“作业内容、提交时间、提交方式、注意事项和相关资料”。现有的 [`_posts/2026-09-15-homework-01.md`](_posts/2026-09-15-homework-01.md) 可直接复制作为模板。

### 修改网站页面

| 内容 | 文件 |
| --- | --- |
| 首页 | `index.html`、`_config.yml` |
| 教学大纲 | `syllabus.md` |
| 课程资料 | `course-materials.md` |
| 讲义目录 | `lectures.md`、`_data/lectures.yml` |
| 课程通知 | `blog.md`、`_posts/` |
| 顶部导航 | `_includes/nav.html` |
| 页面样式 | `_sass/`、`_css/main.scss` |

## 部署检查

提交前建议完成以下检查：

```bash
jekyll build
git diff --check
git status
```

确认网站构建成功、23 讲资源链接完整，并且没有将 `_site/`、LaTeX 辅助文件或其他本地缓存加入提交。

## 许可

仓库许可信息见 [`LICENSE`](LICENSE)。课程资料的使用与再发布请同时遵守其中的规定。
