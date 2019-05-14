---
layout: collection
permalink: people/
---

<h3>People - Graph</h3>
<pre>
use kumu embed here
</pre>

<h3>People - Search</h3>
how can we help people find someone - so not just name or initials
searches, but maybe, term searches?


<h3>People - List</h3>
Sometimes raw lists are just the best.
And I have no idea how to get pagination working! ;)
And shouldn't this just be a searchable table... 
<ul class="inline">
  {% for item in site.data.rwot_people %}
    <li>{{ item.Label }}</li>
  {% endfor %}
</ul>

