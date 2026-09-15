---
layout: page
title: 课程讲义
permalink: /lectures/
---

<p class="lectures-intro">
本课程共 23 讲。每讲提供适合阅读和打印的 <strong>Handout</strong>、
保留逐步显示效果的课堂 <strong>Slide</strong>，以及可供学习和修改的
<strong>TeX 源文件</strong>。
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
