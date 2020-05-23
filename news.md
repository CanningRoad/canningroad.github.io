---
title: News
longname: News & Updates
---

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% for this_post in site.posts %}
		<a class="no-underline near-black" href="{{this_post.url}}">
			{% 	include post-view.html
				post=this_post
			%}
		</a>
	{% endfor %}

</div>
