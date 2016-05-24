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

{% block content %}
	<div class="menu-kamikaze">
		<div class="logo">
			<a href="/">
				<img src="/images/logo-kamikazelab.png">
			</a>
		</div>
		<div class="sections">
			<ul class="nav">
				<li><a class="active" href="proyectos">Proyectos</a></li>
				<li><a href="/">Inicio</a></li>
			</ul>
		</div>
	</div>
	<div class="container-projects">
			<div class="projects-page">
				<div class="header-projects">
					<div class="title-page">
						<div class="text">Proyectos</div>
						<div class="support-text">Estas son algunas de nuestras creaciones más temidas.</div>
					</div>
				</div>
				<div class="projects">
					{% if filters.category and not data.category %}
						<h3 class="text-muted">Invalid Category.</h3>
					{% else %}
						<div class="grid-projects">
							{% for proyecto in data.proyectos.results %}
							<div class="project" style="background-color:{{ proyecto.backround_color}};">
								<div class="left">
									<img src="/images/agencia.png" class="img-agency" alt="Icono de la agencia">
								</div>
								<div class="right">
									<img src="/images/proyectos/{{ proyecto.image_small.filename }}" class="img-project" alt="Imagen principal del proyecto">
								</div>
								<div class="name">{{ proyecto.title }}</div>
								<div class="goToProject">
									<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
								</div>
							</div>
							{% endfor %}
						</div>
					{% endif %}

				</div>
			</div>
	</div>
{% endblock %}
