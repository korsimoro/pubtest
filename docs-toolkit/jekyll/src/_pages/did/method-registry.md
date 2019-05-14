---
layout: single
title: Decentralized IDentifiers - Method Registry
sidebar:
  - title: "About Dids"
    nav: "did"
---

<ul>
{% for item in site.data['did-method-registry'].summary %}
  <li><a href='/'>{{ item['Method Name'] }}</a></li>
{% endfor %}
</ul>

## Method Registry

<iframe class="airtable-embed" src="https://airtable.com/embed/shrevimEgHmANk3Jj?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>
