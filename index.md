---
name: Welcome
intro: >
  <b>Church is a family, not a building!</b> We're a welcoming Christian church based on the corner of Canning Road and Milton Street. We believe Jesus is the hope for the world and we want to share that real and lasting joy with you.
---
## Our regular meetings
We have a regular Sunday morning service as well as other events throughout the week. Click on one of our services for more information.

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% for service in site.services %}
		<a class="no-underline" href="{{site.url}}/{{service.url}}">
			<div class="w5 h4 pa3
				ma2 mr4-l
				bg-orange white tc grow hover-bg-irnbru">
				
				<p class="mv1"><strong>{{service.name}}</strong></p>
				<p class="mv1">{{service.audience}}</p>
				<p class="mv1">{{service.when}}</p>
				
				{% if service.nextevent %}
				<p class="mv1"><i>Next event:</i> {{service.nextevent}}</p>
				{% endif %}
				
			</div>
		</a>
	{% endfor %}

</div>

## Other events

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% for act in site.activities %}
		<a class="no-underline" href="{{site.url}}/{{act.url}}">
			<div class="w5 h4 pa3
				ma2 mr4-l
				bg-blue white tc grow hover-bg-dark-blue">
				
				<p class="mv1"><strong>{{act.name}}</strong></p>
				<p class="mv1">{{act.about}}</p>
				<p class="mv1">{{act.when}}</p>
				
			</div>
		</a>
	{% endfor %}

</div>	

## Recent Posts

