---
title: Moodboard
---

{% for item in site.data.moodboard %}
{% if item.type == "image" %}
<img alt="{{ item.label }}" src="{{ item.url }}">
<p class="label">{{ item.label }}</p>
{% endif %}
<hr>
{% endfor %}
