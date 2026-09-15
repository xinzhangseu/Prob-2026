---
layout: page
title: 课程通知
permalink: /announcements/
---

这里按时间发布课程相关信息，包括作业布置、上课调整、资料更新、测验与考试安排。请同学们定期查看，并以最新通知为准。

作业通知建议统一使用“第 01 次作业｜主题（截止：YYYY-MM-DD）”的标题，并在正文中明确题目范围、提交时间、提交方式和注意事项。

<ul id="archive">
{% for post in site.posts %}
  {% capture y %}{{post.date | date:"%Y"}}{% endcapture %}
  {% if year != y %}
    {% assign year = y %}
    <h2 class="blogyear">{{ y}}</h2>
  {% endif %}
<li class="archiveposturl"><span><a href="{{ post.url | relative_url }}" title="{{ post.title }}">{{ post.title }}</a></span><br/>
<span class = "postlower"><strong>作者：</strong> {% if post.author %}{{post.author}}{% else %}{{ site.author }}{% endif %}
<strong>分类：</strong>  {% if post.categories %}
 
  {% for cat in post.categories %}
  <span class="post-category">{{ cat }}</span>&nbsp;
  {% endfor %}

{% endif %} <!-- {{ post.categories | first }} -->
<strong style="font-size:100%; font-family: 'Titillium Web', sans-serif; float:right">{{ post.date | date: '%Y-%m-%d' }}</strong>
</span> 

</li>
{% endfor %}
</ul>

<!-- {{ post.date | date: '%m %d, %Y' }} -->
