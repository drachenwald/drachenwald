{% assign group=include.branch %}
{% assign regnum=site.data.regnum-officers | where: "group", group.id %}

<strong>Region:</strong> {{ group.mundanely }}<br>
        <strong>Online:</strong> {% unless group.website == "" %}<a href="{{ group.website }}">{{ group.website }} </a> {% endunless %}
        {% unless group.facebook-page == "" %} <a href="{{ group.facebook-page }}"><i class="fab fa-fw fa-facebook" style="color:blue" aria-hidden="true"></i></a> {% endunless %}
        {% unless group.twitter == "" %} <a href="{{ group.twitter }}"> <i class="fab fa-fw fa-twitter" style="color:blue" aria-hidden="true"></i></a> {% endunless %}
        {% unless group.facebook == "" %} <a href="{{ group.facebook }}"><i class="fab fa-fw fa-facebook" aria-hidden="true" style="color:blue"></i></a> {% endunless %}
        {% unless group.instagram == "" %} <a href="{{ group.instagram }}"><i class="fab fa-fw fa-instagram"  aria-hidden="true"></i></a> {% endunless %}
       {% unless group.discord == "" %} <a href="{{ group.discord }}"> <i class="fab fa-fw fa-discord" style="color:blue" aria-hidden="true"></i></a> {% endunless %}
        {% unless group.youtube == "" %} <a href="{{ group.youtube }}"> <i class="fab fa-fw fa-youtube" aria-hidden="true" style="color:red"></i></a> {% endunless %}
 		
        {% assign seneschal = regnum | where: "office", "seneschal" | first %}
        {% assign chatelaine = regnum | where: "office", "chatelaine" | first %}

        {% if seneschal %}
 <br><strong>Seneschal:</strong>  {{ seneschal.scaname }}
          {% unless seneschal.email == "" %} (<a href="mailto:{{ seneschal.email }}">{{ seneschal.email }}</a>) {% endunless %}
            {% unless seneschal.mundanename == "" %}({{ seneschal.mundanename }}){% endunless %}
        {% endif %}

        {% if chatelaine %}
 <br> <strong>Chatelaine:</strong> {{ chatelaine.scaname }} 
          {% unless chatelaine.email == "" %} (<a href="mailto:{{ chatelaine.email }}">{{ chatelaine.email }}</a>){% endunless %}
            {% unless chatelaine.mundanename == "" %}({{ chatelaine.mundanename }}){% endunless %}
        {% endif %}
<br/>