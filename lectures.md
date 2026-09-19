---
layout: page
title: 课程讲义
permalink: /lectures/
---

<p class="lectures-intro">
本课程共 23 讲。课程提供<a href="{{ '/Lectures/Prob-All.pdf' | relative_url }}" target="_blank" rel="noopener">完整版课件PDF (全部23讲)</a>与单独每讲适合阅读打印的 <strong>Handout</strong>、
保留逐步显示效果的课堂 <strong>Slide</strong>，以及可供学习和修改的
<strong>TeX 源文件</strong>。
</p>



<p>
  <a href="{{ '/Lectures/Prob-All.tex' | relative_url }}" download="Prob-All.tex">下载统一主文件 Prob-All.tex</a>。
  各讲源文件通过 <code>subfiles</code> 继承此文件中的公共导言，编译单讲时也必须将它与
  <code>Lxx.tex</code> 放在同一目录，并保留主题文件和图片资源。
  具体步骤见<a href="{{ '/course-materials/' | relative_url }}#lecture-compilation">课件编译说明</a>。
</p>

<div class="lecture-list">
{% for lecture in site.data.lectures %}
  <article class="lecture-row" id="lecture-{{ lecture.number }}">
    <div class="lecture-card__heading">
      <h2>{{ lecture.title }}</h2>
    </div>

    <p class="lecture-card__summary"><strong>内容：</strong>{{ lecture.tldr }}</p>

    <div class="lecture-card__actions">
      <a class="lecture-link lecture-link--handout"
         href="{{ '/' | append: lecture.dirname | append: '/' | append: lecture.handout | relative_url }}"
         target="_blank" rel="noopener"
         aria-label="打开{{ lecture.title }} Handout" title="Handout">
        <i class="fas fa-file-pdf" aria-hidden="true"></i>
        <span>Handout</span>
      </a>
      <a class="lecture-link lecture-link--slide"
         href="{{ '/' | append: lecture.dirname | append: '/' | append: lecture.slides | relative_url }}"
         target="_blank" rel="noopener"
         aria-label="打开{{ lecture.title }}课堂 Slide" title="课堂 Slide">
        <i class="fas fa-chalkboard-teacher" aria-hidden="true"></i>
        <span>课堂 Slide</span>
      </a>
      <a class="lecture-link lecture-link--source"
         href="https://github.com/{{ site.githubdir }}/blob/master/{{ lecture.dirname }}/{{ lecture.source }}"
         target="_blank" rel="noopener"
         aria-label="在 GitHub 查看{{ lecture.title }} TeX 源文件" title="TeX 源文件">
        <i class="fas fa-code" aria-hidden="true"></i>
        <span>TeX 源文件</span>
      </a>
    </div>
  </article>
{% endfor %}
</div>
