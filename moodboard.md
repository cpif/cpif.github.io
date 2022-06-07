---
title: Moodboard
permalink: /moodboard/
---

{% for item in site.data.moodboard limit:10 %}
{% if item.type == "image" %}
<img alt="{{ item.label }}" src="{{ item.url }}">
<p class="label">{{ item.label }}</p>
{% endif %}
<hr>
{% endfor %}
