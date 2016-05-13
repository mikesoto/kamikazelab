{% extends "../layouts/default.swig" %}

{% block content %}
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>{{ data.proyecto.title }}</h1>
				<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et tristique nibh."</p>
			</div>
			<div class="col-sm-6">
				<img src="{{ data.proyecto._.image_primary.fit(530,450) }}" class="img-responsive">
			</div>
		</div>
		<div class="row">
				<div class="col-sm-6">
					<div class="col-sm-12">
						<img src="{{ data.proyecto._.image_ext_1.fit(150,150) }}" class="img-responsive" style="float:left;">
						<img src="{{ data.proyecto._.image_ext_2.fit(150,150) }}" class="img-responsive" style="float:left;">
					</div>
					<div class="col-sm-12">
						<img src="{{ data.proyecto._.image_ext_3.fit(150,150) }}" class="img-responsive" style="float:left;">
						<img src="{{ data.proyecto._.image_ext_4.fit(150,150) }}" class="img-responsive" style="float:left;">
					</div>
				</div>
				<div class="col-sm-6">
					{{ data.proyecto.content.full | raw }}
				</div>
				<div class="col-sm-12">
					{% if data.proyecto.categories and data.proyecto.categories.length %}
						{% for cat in data.proyecto.categories %}
							<span class="label label-default">{{ cat.name }}</span>
						{% endfor %}
					{% endif %}
				</div>
			</div>
		</div>
	</div>
{% endblock %}
