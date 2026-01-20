---
title: Archery Marshal List 
excerpt: Archery marshals across the areas of Drachenwald
toc: true
toc_label: Contents
---

{% if site.data['archery_marshal'] %}
  {% assign archery_marshal = site.data['archery_marshal'].data | sort: "name" %}

{% else %}
  {% assign archery_marshal = "" %}
  The marshal list isn't available right now - please check back later.
{% endif %}

# Archery and thrown weapons marshals

<table>
  <tr><td style="font-size:14pt">🏹</td><td> Archery marshal</td></tr>
  <tr><td style="font-size:14pt">🗡️</td><td> Thrown weapons marshal</td></tr>
  <tr><td style="font-size:14pt">📜</td><td> Authorising marshal</td></tr>
</table>

## Nordmark

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Authorising</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.area == "Nordmark" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>

## Insulae Draconis

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Authorising</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.area == "Insulae Draconis" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>

## Aarnimetsä

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Authorising</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.area == "Aarnimetsä" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>


## Central

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Authorising</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.area == "Central" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>


Data last updated: {{site.data['archery-marshals'].metadata.LastUpdate}}
