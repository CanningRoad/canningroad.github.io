---
title: News
longname: News & Updates
---

<div class="w-100 pv2 flex-l flex-wrap items-center-l">

	{% for post in site.posts %}
		<a class="no-underline near-black" href="{{post.url}}">
			<div class="pv1 ph3
				ma2 mr4-l
				ba bw1
				">
				
					<h2>{{post.title}}</h2>
					<p><small>{{post.date | date_to_string}}</small></p>
					
				<p>{{post.content | strip_html | truncatewords: 50}}</p>
				
			</div>
		</a>
	{% endfor %}

</div>
