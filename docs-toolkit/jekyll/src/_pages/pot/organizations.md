---
layout: single
# posts: site.data.rwot_orgsummary | this is not proper frontmatter -afaik- not sure what you're trying to do. 
permalink: organizations/
---

<u>Commit Check organizations.html</u>

<!--needs an if\then statement to only build a link if a link shows-->

{% for item in site.data.rwot_orgsummary %}
  <h2><a href='{{ item.url }}'>{{ item.Label }}</a></h2>
  <ul>
    <li>{{ item.Description }}</li>
  </ul>
{% endfor %}
  