---
title: Links
permalink: /links/
---

{% for item in site.data.linklist %}
{% if item.category != mycat %}
# {{ item.category }}
{% assign mycat = item.category %}
{% endif %}

- [{{ item.label }}]({{ item.link }})

{% endfor %}
