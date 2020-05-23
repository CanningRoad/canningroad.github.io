---
title: Welcome
intro: >
  <b>Church is a family, not a building!</b> We're a welcoming Christian church based on the corner of Canning Road and Newton Street. We believe Jesus is the hope for the world and we want to share that real and lasting joy with you.
---
## Latest News

<div class="w-100 pv2 flex-l flex-wrap items-center-l">
	<div class="pa0 pl3
	ma2 cf
	ba bw1 b--mid-gray
	">
		<div class="w-100 fl-ns w-60-ns pa0 pr4">
			<a class="no-underline near-black" href="{{ site.posts.first.url }}">
				<h3>
					{{ site.posts.first.title }}
				</h3>
				<p>{{site.posts.first.content | strip_html | truncatewords: 50}}</p>
				<p class="tr w-100"><a href="{{ site.posts.first.url }}">Read more...</a></p>
			</a>
		</div>
		{% if site.posts.first.photo %}
			<div class="dn db-ns fr-ns w-40-ns h5 bg-center cover"
				style="background-image:url({{site.posts.first.photo}})">
			</div>
		{% endif %}
	</div>
</div>

## Our regular meetings
We have a regular Sunday morning service as well as other events throughout the week. Click on one of our services for more information.

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% assign live_services = site.services | where: "live", true %}
	{% for service in live_services %}
		<a class="no-underline" href="{{service.url}}">
			<div class="w5 h4 pa3
				ma2 mr4-l
				bg-blue white tc grow hover-bg-dark-blue">
				
				<p class="mv1"><strong>{{service.title}}</strong></p>
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
	{% assign live_activities = site.activities | where: "live", true %}
	{% for act in live_activities %}
		{% 	include activity-button.html
			activity=act
			%}
	{% endfor %}
</div>	

## Recent Posts

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% for post in site.posts %}
		<a class="no-underline near-black" href="{{post.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				b--mid-gray grow ">
				
				<p>
					<strong>{{post.title}}</strong>
					<small>{{post.date | date_to_string}}</small>
				</p>
				<p>{{post.content | strip_html | truncatewords: 25}}</p>
				
			</div>
		</a>
	{% endfor %}

</div>	
