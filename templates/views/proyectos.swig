{% extends "../layouts/default.swig" %}

{% macro showProyecto(proyecto) %}
	<div class="post" data-ks-editable="editable(user, { list: 'Proyecto', id: proyecto.id })">
		<h2>
			<a href="/proyecto/{{ proyecto.slug }}">{{ proyecto.title }}</a>
		</h2>
		<p class="lead text-muted">Posted
			{% if proyecto.publishedDate %}
				<br>on {{ proyecto._.publishedDate.format("MMMM Do, YYYY") }}
			{% endif %}
			{% if proyecto.categories and proyecto.categories.length %}
				<br>in
				{% for cat in proyecto.categories %}
					<a href="/proyectos/{{ cat.key }}">{{ cat.name }}</a>
					{% if loop.index < proyecto.categories.length - 1 %}, {% endif %}
				{% endfor %}
			{% endif %}
			{% if proyecto.author %}
				<br>by {{ proyecto.author.name.first }}
			{% endif %}
		</p>
		{% if proyecto.image_primary.exists %}
			<img src="/images/proyectos/{{ proyecto.image_primary.filename }}" class="img">
		{% endif %}
		<p>{{ proyecto.content.brief | safe }}</p>
		{% if proyecto.content.extended %}
			<p class="read-more">
				<a href="/proyecto/{{ proyecto.slug }}">Read more...</a>
			</p>
		{% endif %}
	</div>
{% endmacro %}

{% block intro %}
	<div class="container">
		{% set title = "Proyectos" %}
		{% if data.category %}
			{% set title = data.category.name %}
		{% endif %}
		<h1>{{ title }}</h1>
	</div>
{% endblock %}

{% block content %}
	<div class="menu-kamikaze">
		<div class="logo">
			<a href="/">
				<img src="images/logo-kamikazelab.png">
			</a>
		</div>
		<div class="sections">
			<ul class="nav">
				<li><a class="active" href="proyectos">Proyectos</a></li>
				<li><a href="/">Inicio</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-md-9">
				{% if filters.category and not data.category %}
					<h3 class="text-muted">Invalid Category.</h3>
				{% else %}
					{% if data.proyectos.results.length %}
						{% if data.proyectos.totalPages > 1 %}
							<h4 class="text-weight-normal">Showing
								<strong>{{ data.proyectos.first }}</strong>
								to
								<strong>{{ data.proyectos.last }}</strong>
								of
								<strong>{{ data.proyectos.total }}</strong>
								proyectos.
							</h4>
						{% else %}
							<h4 class="text-weight-normal">Showing {{ utils.plural(data.proyectos.results.length, "* proyecto") }}.</h4>
						{% endif %}
						<div class="blog">
							{% for proyecto in data.proyectos.results %}
								{{ showProyecto(proyecto) }}
							{% endfor %}
						</div>
						{% if data.proyectos.totalPages > 1 %}
							<ul class="pagination">
								{% if data.proyectos.previous %}
									<li>
										<a href="?page={{ data.proyectos.previous }}">
											<span class="glyphicon glyphicon-chevron-left"></span>
										</a>
									</li>
								{% else %}
									<li class="disabled">
										<a href="?page=1">
											<span class="glyphicon glyphicon-chevron-left"></span>
										</a>
									</li>
                                                                {% endif %}
									{% for p in data.proyectos.pages %}
										<li class="{% if data.proyectos.currentPage == p %}active{% endif %}">
											<a href="?page={% if p == "..." %}{% if i %}{{ data.proyectos.totalPages }}{% else %}1{% endif %}{% else %}{{ p }}{% endif %}">{{ p }}</a>
										</li>
									{% endfor %}
								{% if data.proyectos.next %}
									<li>
										<a href="?page={{ data.proyectos.next }}">
											<span class="glyphicon glyphicon-chevron-right"></span>
										</a>
									</li>
								{% else %}
									<li class="disabled">
										<a href="?page={{ data.proyectos.totalPages }}">
											<span class="glyphicon glyphicon-chevron-right"></span>
										</a>
									</li>
								{% endif %}
							</ul>
						{% endif %}
					{% else %}
						{% if data.category %}
							<h3 class="text-muted">There are no proyectos in the category {{ data.category.name }}.</h3>
						{% else %}
							<h3 class="text-muted">There are no proyectos yet.</h3>
						{% endif %}
					{% endif %}
				{% endif %}
			</div>
			{% if data.categories.length %}
			<div class="col-sm-4 col-md-3">
				<h2>Categories</h2>
				<div class="list-group" style="margin-top: 70px;">
					<a href="/proyectos" class="{% if not data.category %}active{% endif %} list-group-item">All Categories</a>
					{% for cat in data.categories %}
						<a href="/proyectos/{{ cat.key }}" class="{% if data.category and data.category.id == cat.id %}active{% endif %} list-group-item">{{ cat.name }}</a>
					{% endfor %}
				</div>
			</div>
			{% endif %}
		</div>
	</div>
{% endblock %}
