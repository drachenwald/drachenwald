---
title: Past events published in the Dragons Tale
---


{% if site.data.fullcalendar.pastevents %}
  {% assign pastevents = site.data.fullcalendar.pastevents | sort: 'start_date' %}

{% else %}
  {% assign pastevents  = "" %}
	The past events  aren't available right now, please come back later.
{% endif %}

<table>

  <caption><h3>Past events</h3></caption>
  
  <thead>
    <tr>
      <th scope="col"><strong><h3>Date</h3></strong></th>
      <th scope="col"><strong><h3>Host</h3></strong></th>
      <th scope="col"><strong><h3>Event</h3></strong></th>
      <th scope="col"><strong><h3>Status</h3></strong></th>
      <th scope="col"><strong><h3>Approved by Chronicler</h3></strong></th>

    </tr>
  </thead>
{% for item in pastevents %}
	{% if item.chroniclers_approval != "" %}
 	   <tr>
		<td>{{ item.start_date | date: "%-d %b %Y" }} </td>
		<td>{{ item.host_branch }}</td>
		<td>{{ item.event_name }}</td>
	    <td>{{ item.status }}</td>
	     <td>{{ item.chroniclers_approval | date: "%b %d, %Y"  }}</td>

       </tr>
	{% endif %}
{% endfor %}

</table>

<div style="text-align: center">
  <a href="{{ site.baseurl }}{% link events/calendar/index.md %}" class="btn btn--primary">View the calendar</a>
</div>
