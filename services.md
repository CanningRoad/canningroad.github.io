---
title: Services & Events
---

We've got a range of things going on, and not just on Sundays!

Have a look and see if any of these things might be for you:

<div class="w-100 pv2 w-50-l fl-l">
	<h2>Services</h2>	
	{% for service in site.services %}
		<a class="no-underline near-black" href="{{site.baseurl}}{{service.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				b--mid-gray grow ">
				
				<h2>{{service.title}}</h2>
				<p class="mv1 b">{{service.audience}}</p>
				<p class="mv1">{{service.when}}</p>
				
				{% if service.nextevent %}
				<p class="mv1"><i>Next event:</i> {{service.nextevent}}</p>
				{% endif %}
				
				<p>{{service.content | strip_html | truncatewords: 25}}</p>
				
			</div>
		</a>
	{% endfor %}
</div>

<div class="w-100 pv2 w-50-l fl-l">
	<h2>Events</h2>	
	{% for activity in site.activities %}
		<a class="no-underline near-black" href="{{site.baseurl}}{{activity.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				b--mid-gray grow ">
				
				<h2>{{activity.title}}</h2>
				<p class="mv1 b">{{activity.audience}}</p>
				<p class="mv1">{{activity.when}}</p>
				
				{% if activity.nextevent %}
				<p class="mv1"><i>Next event:</i> {{activity.nextevent}}</p>
				{% endif %}
				
				<p>{{activity.content | strip_html | truncatewords: 25}}</p>
				
			</div>
		</a>
	{% endfor %}
</div>