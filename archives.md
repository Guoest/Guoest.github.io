---
layout: page
title: Archives
permalink: /archives/
---

<div class="archives">
  <h1>All Posts</h1>
  
  {% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
  {% for year in postsByYear %}
    <h2>{{ year.name }}</h2>
    <ul>
      {% for post in year.items %}
        <li>
          <span class="post-meta">{{ post.date | date: "%b %-d" }}</span>
          <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
          <span class="post-category">
            [{% for category in post.categories %}
              <a href="/categories/{{ category }}/">{{ category | capitalize }}</a>{% unless forloop.last %}, {% endunless %}
            {% endfor %}]
          </span>
        </li>
      {% endfor %}
    </ul>
  {% endfor %}
</div>

<style>
  .archives ul {
    list-style-type: none;
    padding-left: 0;
  }
  
  .archives li {
    margin-bottom: 8px;
  }
  
  .post-meta {
    color: #666;
    margin-right: 10px;
  }
  
  .post-category {
    font-size: 0.85em;
    color: #666;
    margin-left: 10px;
  }
</style>
