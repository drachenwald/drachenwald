---
title: Events in Drachenwald
redirect_from:
  - /events/
---
[Past Events]({{ site.baseurl }}{% link events/pastevents.md %})


{% if jekyll.environment == "production" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
></div>
<script type="text/javascript" src="https://scripts.drachenwald.sca.org/calendar/v3.0/calendar.js"></script>
{% elsif jekyll.environment == "staging" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
></div>
<script type="text/javascript" src="https://sca-drachenwald.gitlab.io/events-calendar/calendar.js"></script>
{% elsif jekyll.environment == "development" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
></div>
<script type="text/javascript" src="http://127.0.0.1:8080/calendar.js"></script>
{% endif %}

<div id="internetexplorer"></div>

<script>
  if ( ( !!window.MSInputMethodContext && !!document.documentMode) ) {
    document.getElementById("internetexplorer").innerHTML = "<p>To give our users the functionality they need, we're unable to display the calendar in Internet Explorer. Please use another browser, or your phone. If you have feedback, please email <a href='mailto:webminister@drachenwald.sca.org'>webminister@drachenwald.sca.org</a>.</p>";
  }

  if ( userAgent.indexOf('MSIE') > 0 ) {
    document.getElementById("internetexplorer").innerHTML = "<p>To give our users the functionality they need, we're unable to display the calendar in Internet Explorer. Please use another browser, or your phone. If you have feedback, please email <a href='mailto:webminister@drachenwald.sca.org'>webminister@drachenwald.sca.org</a>.</p>";
  }

</script>

