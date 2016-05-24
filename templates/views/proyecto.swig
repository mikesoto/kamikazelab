{% extends "../layouts/default.swig" %}

{% block content %}
	<div class="menu-kamikaze">
		<div class="logo">
			<a href="/">
				<img src="/images/logo-kamikazelab.png">
			</a>
		</div>
		<div class="sections">
			<ul class="nav">
				<li><a href="/proyectos">Proyectos</a></li>
				<li><a href="/">Inicio</a></li>
			</ul>
		</div>
	</div>
	<div class="container-project">
		<div class="project-page">
			<div class="project-slide" style="background-color:{{ data.proyecto.backround_color}};">
				<div class="left">
					<div class="icon-agency">
						<img src="/images/agencia.png" class="img-agency">
					</div>
					<div class="content-project">
						<div class="project-title">{{ data.proyecto.title }}</div>
						<div class="slide-content">{{ data.proyecto.content.brief | safe }}</div>
						<div class="slide-btn">
							<a href="http://{{ data.proyecto.site_link }}">Ir al sitio</a>
						</div>
					</div>
				</div>
				<div class="right">
					<img src="/images/proyectos/{{ data.proyecto.image_primary.filename }}" class="img-primary">
				</div>
			</div>
			<div class="project-info">
				<div class="left-info">
					<div class="grid-images">
						<div class="image">
							<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_1.filename }}" class="img-xtra">
						</div>
						<div class="image">
							<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_2.filename }}" class="img-xtra">
						</div>
						<div class="image">
							<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_3.filename }}" class="img-xtra">
						</div>
						<div class="image">
							<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_4.filename }}" class="img-xtra">
						</div>
					</div>
				</div>
				<div class="right-info">
					<p>{{ data.proyecto.content.full | raw }}</p>
					<p>{{ data.proyecto.content.quotes | safe }}</p>
				</div>
			</div>
			<div class="categories">
				{% if data.proyecto.categories and data.proyecto.categories.length %}
					{% for cat in data.proyecto.categories %}
						<div class="categorie">
							<img src="/images/categorias/{{ cat.classname }}.png" class="img-category">
							<span class="label label-default">{{ cat.name }}</span>
						</div>
					{% endfor %}
				{% endif %}
			</div>
		</div>
	</div>
	<div>
		{% if data.prev_proyecto %}
			<a href="{{ data.prev_proyecto.slug }}" class="label label-default">ANTERIOR</a>
		{% endif %}
	</div>
	<div>
		{% if data.next_proyecto %}
			<a href="{{ data.next_proyecto.slug }}" class="label label-default">SIGUIENTE</a>
		{% endif %}
	</div>
{% endblock %}
