---
layout: single
title: Decentralized IDentifier
sidebar:
  - title: "About Dids"
    nav: "did"
---

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



# Direct Airtable Plugins

## KanBan - general runnability

<iframe class="airtable-embed" src="https://airtable.com/embed/shr1Din0eTKNNVK3v?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>

## Kanban - Storage Strategy
<iframe class="airtable-embed" src="https://airtable.com/embed/shrMEo7w3GcLSTpmB?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>

## KanBan - by CReSR status

<iframe class="airtable-embed" src="https://airtable.com/embed/shrOXsm28J8LuqXzm?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>

## Method Gallery

<iframe class="airtable-embed" src="https://airtable.com/embed/shrwnUB5H9BSNKVLo?backgroundColor=purple&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>


## Update contact information

<iframe class="airtable-embed" src="https://airtable.com/embed/shraMbFnqoPZAz75Z?backgroundColor=purple" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>
