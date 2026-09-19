---
layout: page
title: 教学大纲
permalink: /syllabus/
---

<div class="course-facts">
  <div><span>课程名称</span><strong>概率论（Probability Theory）</strong></div>
  <div><span>开课学期</span><strong>2026 年秋季学期</strong></div>
  <div><span>上课时间</span><strong>周二、周四</strong></div>
  <div><span>上课地点</span><strong>J2-109</strong></div>
  <div><span>答疑时间</span><strong>每周二 12:00–13:30</strong></div>
  <div><span>办公室</span><strong>新文科楼 528-4</strong></div>
  <div><span>电子邮箱</span><strong><a href="mailto:x.zhang.seu@gmail.com">x.zhang.seu@gmail.com</a></strong></div>
  <div><span>课程主页</span><strong><a href="https://xinzhangseu.github.io/Prob-2026/">xinzhangseu.github.io/Prob-2026</a></strong></div>
</div>

## 课程简介

概率论研究随机现象的数量规律，是统计学、数据科学、金融、工程和自然科学的重要数学基础，也是数学类各专业的基础核心课程。本课程以概率的公理化体系为主线，从样本空间与随机事件出发，依次建立随机变量、分布函数、数字特征、母函数和特征函数等分析工具，进而讨论随机变量序列的收敛性、大数定律与中心极限定理。

与侧重计算与应用的入门课程相比，本课程强调概念的严格性与论证的完整性。定理的使用须明确条件，计算方法的学习须理解其概率意义；课程同时通过典型模型与数值实验，引导学生使用 Python 或 R 进行蒙特卡洛模拟，直观考察大数定律与中心极限定理的收敛机制。

本课程为数理统计、随机过程、随机分析和随机控制等后续课程奠定基础。课程学习应兼顾概念理解、理论推导、习题训练和计算实践，逐步形成描述随机现象、建立概率模型并进行严谨分析的能力。

## 学习目标

完成本课程后，学生应能够：

1. 准确陈述概率的公理化定义，熟练运用古典概型、几何概型、条件概率、全概率公式与贝叶斯公式解决计数和推断问题；
2. 系统掌握一维与多维随机变量及其分布，能够求随机变量函数的分布，并正确判断随机变量的独立性；
3. 熟练计算数学期望、方差、协方差与相关系数，理解各数字特征的概率含义及其相互关系；
4. 掌握母函数与特征函数的定义、性质和典型应用，能够使用特征函数研究独立随机变量和的分布；
5. 准确叙述并理解大数定律与中心极限定理的条件和结论，能够说明定理条件的作用并完成基本应用；
6. 理解依概率收敛、依分布收敛、几乎处处收敛与 \(L^p\) 收敛，掌握这些收敛方式之间的主要关系；
7. 能够使用 Python 或 R 完成概率模型的数值实验，并以可复现的代码和规范文字呈现实验结果；
8. 初步了解概率论向数理统计、随机过程与随机分析的延伸，为后续专业课程学习做好准备。

## 成绩构成

<div class="syllabus-table-wrap grading-table-wrap">
<table>
  <thead>
    <tr><th>项目</th><th>比例</th><th>说明</th></tr>
  </thead>
  <tbody>
    <tr><td>考勤</td><td>15%</td><td>不定时随机点名；三次缺勤则此项成绩为零。若期末考试成绩高于 95 分，可用期末成绩替代考勤成绩。</td></tr>
    <tr><td>平时成绩</td><td>15%</td><td>包括平时作业、大作业和讨论报告等。</td></tr>
    <tr><td>中期测验</td><td>20%</td><td>课程阶段性测验。</td></tr>
    <tr><td>期末考试</td><td>50%</td><td>综合考查课程主要内容。</td></tr>
    <tr><td>课堂及平时表现</td><td>最多加 5 分</td><td>用于奖励积极参与课堂讨论与其他优秀表现。</td></tr>
  </tbody>
</table>
</div>

## 作业要求

本课程作业由 AI 批改。请关注微信公众号**「数你最灵」**，并在公众号内完成作业提交、批改结果查看等全部操作。

- 作业全流程均在手机端完成，无需通过电子邮箱提交 PDF 或源文件；
- 学生端完整使用手册已挂载至微信公众号**「数你最灵」**，首次使用前请仔细阅读，并按手册完成相关操作；
- 每次作业的内容和截止时间以课程通知为准；
- 解答不能只有公式，应写出必要的推理过程和文字说明；
- 如作业通知与本说明不一致，以最新课程通知为准。

## 教学内容与进度

课程共 16 周，每周 2 次课，共 32 次课。以下安排根据现有 23 讲课件的内容与篇幅编排，实际进度可根据校历和课堂情况适当调整。每讲的 Handout 和课堂 Slide 可在[课程讲义]({{ '/lectures/' | relative_url }})页面下载。

<div class="syllabus-table-wrap schedule-table-wrap">
<table>
  <thead><tr><th>周次</th><th>课次</th><th>第一次课</th><th>第二次课</th></tr></thead>
  <tbody>
    <tr><td>第 1 周</td><td>1–2</td><td><strong>概率论简介</strong>：课程说明、研究对象、学习方法与发展简史。</td><td><strong>事件及其运算关系</strong>：样本空间、随机事件、事件运算及事件列的上下极限。</td></tr>
    <tr><td>第 2 周</td><td>3–4</td><td><strong>古典概型与几何概型</strong>：排列组合、古典概型、几何概型及随机模拟。</td><td><strong>黎曼积分与 Lebesgue 积分</strong>：积分思想、集合大小与测度的引入。</td></tr>
    <tr><td>第 3 周</td><td>5–6</td><td><strong>测度、可测空间与概率</strong>：测度构造、可测空间、Borel 集与概率的公理化定义。</td><td><strong>测度与概率的性质</strong>：概率空间、有限可加性、连续性及加法公式。</td></tr>
    <tr><td>第 4 周</td><td>7–8</td><td><strong>条件概率、全概率与贝叶斯公式</strong>：定义、直观解释、乘法公式与基本推导。</td><td><strong>条件概率公式的应用</strong>：贝叶斯推断、摸球模型与递推计算。</td></tr>
    <tr><td>第 5 周</td><td>9–10</td><td><strong>事件的独立性</strong>：两两独立、相互独立、Borel–Cantelli 引理与独立试验。</td><td><strong>随机变量与随机向量</strong>：随机变量定义、可测性、基本性质与随机向量。</td></tr>
    <tr><td>第 6 周</td><td>11–12</td><td><strong>随机变量的分布</strong>：分布函数、离散型与连续型分布及其性质。</td><td><strong>分布类型与随机变量的存在性</strong>：密度、Lebesgue 分解、分位数函数与构造方法。</td></tr>
    <tr><td>第 7 周</td><td>13–14</td><td><strong>常见离散分布（一）</strong>：Bernoulli 试验、两点分布、二项分布与几何分布。</td><td><strong>常见离散分布（二）</strong>：Pascal 分布、泊松分布、超几何分布及近似关系。</td></tr>
    <tr><td>第 8 周</td><td>15–16</td><td><strong>常见连续分布（一）</strong>：均匀分布、指数分布和正态分布。</td><td><strong>常见连续分布（二）</strong>：Gamma 分布、卡方分布及分布之间的联系。</td></tr>
    <tr><td>第 9 周</td><td>17–18</td><td><strong>多维概率分布（一）</strong>：联合分布函数、二维离散分布与二维连续分布。</td><td><strong>多维概率分布（二）</strong>：边缘分布、常见多维分布及其性质。</td></tr>
    <tr><td>第 10 周</td><td>19–20</td><td><strong>条件分布与随机变量的独立性</strong>：条件分布计算与独立性判定。</td><td><strong>随机变量函数的分布</strong>：一维、多维变量函数及和、商、最大值与最小值的分布。</td></tr>
    <tr><td>第 11 周</td><td>21–22</td><td><strong>数学期望</strong>：定义、存在性、计算方法与基本性质。</td><td><strong>数学期望与方差</strong>：函数期望、方差及常见分布的期望和方差。</td></tr>
    <tr><td>第 12 周</td><td>23–24</td><td><strong>协方差与相关系数</strong>：定义、性质以及不相关与独立的区别。</td><td><strong>条件数学期望与母函数</strong>：条件期望、概率母函数及其应用。</td></tr>
    <tr><td>第 13 周</td><td>25–26</td><td><strong>特征函数（一）</strong>：定义、基本性质以及独立和的特征函数。</td><td><strong>特征函数（二）</strong>：唯一性、反演思想及其在分布研究中的应用。</td></tr>
    <tr><td>第 14 周</td><td>27–28</td><td><strong>随机变量的收敛性</strong>：依概率、几乎处处、依分布和 <em>L<sup>p</sup></em> 收敛。</td><td><strong>收敛方式之间的关系</strong>：弱收敛、特征函数列收敛与典型反例。</td></tr>
    <tr><td>第 15 周</td><td>29–30</td><td><strong>大数定律</strong>：Bernoulli、Chebyshev、Khinchin 大数定律及成立条件。</td><td><strong>中心极限定理（一）</strong>：De Moivre–Laplace 与 Lindeberg–Lévy 定理。</td></tr>
    <tr><td>第 16 周</td><td>31–32</td><td><strong>中心极限定理（二）</strong>：Lyapunov 型条件、正态近似与典型应用。</td><td><strong>课程总结与综合复习</strong>：串联概率模型、数字特征、收敛性与极限定理。</td></tr>
  </tbody>
</table>
</div>

## 参考书目

### 中文教材与参考书

1. 李增沪、张梅、何辉，[《概率论（上册）》](https://xuanshu.hep.com.cn/front/book/findBookDetails?bookId=66d3513a74ce561611bda71d)，高等教育出版社，2025 年。
2. 张颢，[《概率论》](https://xuanshu.hep.com.cn/front/h5Mobile/bookDetails?bookId=59cc0cdbba9eb884cf815274)，高等教育出版社，2018 年。
3. 杨振明，[《概率论（第二版）》](https://book.sciencereading.cn/shop/book/Booksimple/show.do?id=BE357DDF8432244B0ADD148975D922E7D000)，科学出版社，2004 年。
4. 李贤平，[《概率论基础（第三版）》](https://books.google.com/books?id=Gd6MXwAACAAJ)，高等教育出版社，2010 年。
5. Joseph K. Blitzstein、Jessica Hwang，[《概率论导论（翻译版）》](https://www.cmpedu.com/books/book/5585081.htm)（张景肖译），机械工业出版社，2019 年。
6. Dimitri P. Bertsekas、John N. Tsitsiklis，[《概率导论（第二版）》](https://www.mit.edu/~dimitrib/probbook.html)（郑忠国、童行伟译），人民邮电出版社，2009 年；链接为英文原版教材官网。
7. 王梓坤，[《科学发现纵横谈》](https://books.google.com/books?id=R_Bg0AEACAAJ)，北京师范大学出版社，2023 年。

### 英文参考书

- A. N. Shiryaev, [*Probability* (2nd ed.)](https://link.springer.com/book/10.1007/978-1-4757-2539-1), Springer, 1996.

## 课程资源

- [课程资料]({{ '/course-materials/' | relative_url }})
- [课程讲义]({{ '/lectures/' | relative_url }})
- [课程 GitHub 仓库](https://github.com/{{ site.githubdir }})
