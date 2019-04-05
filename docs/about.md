---
title: About
---

# {{ page.title }}
{% for item in site.data.navigation %}
- [{{item.name}}]({{ item.link }})
{% endfor %}

# Prople
{% for item in site.data.rwot_people %}
- [{{item.Label}}]({{ item.Url }})
{% endfor %}

# Orgs
{% for item in site.data.rwot_orgsummary %}
- [{{item.Label}}]({{ item.Url }})
{% endfor %}
