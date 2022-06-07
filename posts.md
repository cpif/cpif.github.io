---
title: Posts
permalink: /posts
---

{% for post in site.posts limit:10 %}
-   [{{ post.title }}]({{ post.url }})

    {{ post.excerpt}}

{% endfor %}
