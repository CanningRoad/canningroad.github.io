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
		{% 	include activity-button.html
			activity=service
			classes="bg-blue hover-bg-dark-blue"
			%}
	{% endfor %}
</div>

## Other events

<div class="w-100 pv2 flex-l flex-wrap items-center-l">
	{% assign live_activities = site.activities | where: "live", true %}
	{% for act in live_activities %}
		{% 	include activity-button.html
			activity=act
			classes="bg-regal hover-bg-darkregal"
			%}
	{% endfor %}
</div>	

## Our Vision

 1. To welcome **all people**, no matter who they are or where they come from, **into the best life** that the Lord God has for them.
 2. To be **loving**, generous and hospitable people, as a **response to what Jesus is doing in our lives**.
 3. To encourage, support and **build one another up** in love.
 4. To usher in the values of Jesus' kingdom in **freedom, forgiveness, and restoration** in High Park and Southport.

## Recent Posts

<div class="w-100 pv2 flex-l flex-wrap items-center-l">
	{% for this_post in site.posts limit:3 %}
		<a class="no-underline near-black" href="{{this_post.url}}">
			{% 	include post-view.html
				post=this_post
			%}
		</a>
	{% endfor %}
</div>

[More News Posts...](/news/)
