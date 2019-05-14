---
layout: single
title: Decentralized IDentifiers - Method Registry
sidebar:
  - title: "About Dids"
    nav: "did"
---

## Method Registry

<iframe class="airtable-embed" src="https://airtable.com/embed/shrevimEgHmANk3Jj?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>


## Methods

This illustrates using data that is in a local YML file - a spreadsheet.
The local spreadsheet happens to be generated from a sqlite database.
The sqlite database happens to be generated from Airtable.

{% for method in site.data['did-method-registry'].summary %}
  {% assign loopindex = forloop.index | modulo: 2 %}
  <li>
    {% capture class %}
      {% if loopindex == 0 %}
        EVEN
      {% endif %}
    {% endcapture %}
  {{ method['Method Name'] }}
  </li>
{% endfor %}
