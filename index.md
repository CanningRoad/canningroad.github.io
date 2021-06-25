---
title: Welcome
intro: >
  <b>Church is a family, not a building!</b> We're a welcoming Christian church based on the corner of Canning Road and Newton Street. We believe Jesus is the hope for the world and we want to share that real and lasting joy with you.
---
## [Latest News](/news/)

<div class="w-100 pv2 flex-l flex-wrap items-center-l">
	{% 	include post-view.html
		post=site.posts.first
	%}
</div>

## Regular Meetings

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

## What's the Christian faith about?

<iframe class="fr-ns ml2-ns" width="416" height="234" src="https://www.youtube.com/embed/CHhz87QbVLg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Christians talk about the "good news"

...but what's so good about it?

What even makes a person a "Christian"?

We wanted to answer these questions in a down-to-earth way that won't make you cringe. 

So we made this video; we hope you enjoy it.


<h2 class="cb pt2">Recent Posts</h2>

<div class="w-100 pv2 flex-l flex-wrap items-center-l">
	{% for this_post in site.posts %}
		<a class="no-underline near-black" href="{{this_post.url}}">
			{% 	include post-view.html
				post=this_post
			%}
		</a>
	{% endfor %}
</div>	
