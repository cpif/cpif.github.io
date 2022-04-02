---
title: Moodboard
---

{% for item in site.data.moodboard %}
<img alt="{{ item.label }}" src="{{ item.url }}">
<p class="label">{{ item.label }}</p>
<hr>
{% endfor %}
