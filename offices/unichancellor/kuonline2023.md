---
title: Classes & Resources from Kingdom University 2020
featureimg: images/foo/test.jpg
featurealt: thing
---

# Kingdom University 2021 Class list

{% assign classes = site.data.kuonline2023.calendar %}

{% assign cats = classes | map: "category" | sort | uniq %}

{% for cat in cats %}
{% unless cat == "" %}
## {{ cat }}

{% assign catclasses = classes | where: "category", cat %} 
{% for class in catclasses %}
### {{ class.title }} - {{ class.teacher }}
{{ class.desc | escape_once | newline_to_br | replace: "=", "" }}
{% unless class.handouts == "" %} * <a href="{{ class.handouts }}">handouts</a>{% endunless %}
{% unless class.youtube == "" %} * <a href="{{ class.youtube }}">youtube</a>{% endunless %}

{% endfor %}

{% endunless %}
{% endfor %}
