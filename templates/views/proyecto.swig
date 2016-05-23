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
			<div class="project-slide">
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
	<!-- <div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>{{ data.proyecto.title }}</h1>
				<p>{{ data.proyecto.content.brief | safe }}</p>
			</div>
			<div class="col-sm-6">
				<img src="/images/proyectos/{{ data.proyecto.image_primary.filename }}" class="img-responsive">
			</div>
		</div>
		<div class="row">
				<div class="col-sm-6">
					<div class="col-sm-12">
						<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_1.filename }}" class="img-responsive" style="float:left;">
						<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_2.filename }}" class="img-responsive" style="float:left;">
					</div>
					<div class="col-sm-12">
						<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_3.filename }}" class="img-responsive" style="float:left;">
						<img src="/images/proyectos/extras/{{ data.proyecto.image_ext_4.filename }}" class="img-responsive" style="float:left;">
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
				<div class="col-sm-12">
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
				</div>
			</div>
		</div> -->
	</div>
{% endblock %}
