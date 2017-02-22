---
longname: Services & Events
---

## Services

<div class="w-100 pv2">
	{% for service in site.services %}
		<a class="no-underline near-black" href="{{site.url}}/{{service.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				b--mid-gray grow ">
				
				<h2>{{service.name}}</h2>
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

## Events

<div class="w-100 pv2">
	{% for activity in site.activities %}
		<a class="no-underline near-black" href="{{site.url}}/{{activity.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				b--mid-gray grow ">
				
				<h2>{{activity.name}}</h2>
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