{% extends "../layouts/default.swig" %}

{% macro showProyecto(proyecto) %}
	<div class="col-sm-4">
		{% if proyecto.image_primary.exists %}
			<a href="/proyecto/{{ proyecto.slug }}">
				<img src="{{ proyecto._.image_primary.fit(300,300) }}" class="img">
			</a>
		{% endif %}
		<a href="/proyecto/{{ proyecto.slug }}"><h3>{{ proyecto.title }}</h3></a>
		<a class="btn btn-default" href="/proyecto/{{ proyecto.slug }}">Ir al proyecto</a>
	</div>
{% endmacro %}



{% block content %}
	<div class="container">
		<div class="row text-center" style="height:400px;padding-top:150px;">
			<h1>Kamikaze Lab</h1>
			<p>
				Kamikaze Lab es un laboratorio creativo dedicado a desarrollar estrategias y productos para el mundo digital
			</p>
		</div>
		<hr>
		<div class="row text-center" style="height:400px;padding-top:150px;">
			<div class="col-sm-6">
				<h1>AGENCIA</h1>
				<p>
					Somos una agencia que trabaja intensamente para innovar junto con nuestros clientes en el mundo digital.
				</p>
			</div>
			<div class="col-sm-6">
				<h1>LABORATORIO</h1>
				<p>
					Un área especializada en la innovación de productos digitales.
				</p>
			</div>
		</div>
		<hr>
		<div class="row text-center" style="height:400px;padding-top:150px;">
			<div class="col-sm-12 text-left" style="margin-top:-140px;">
				<h1>QUÉ HACEMOS</h1>
			</div>
			<div class="col-sm-3">
				<h3>ESTRATEGIA</h3>
			</div>
			<div class="col-sm-3">
				<h3>EXPERIENCIA</h3>
			</div>
			<div class="col-sm-3">
				<h3>DESARROLLO</h3>
			</div>
			<div class="col-sm-3">
				<h3>R&D</h3>
			</div>
		</div>
		<hr>
		<div class="row" style="height:400px;">
			<div class="col-sm-12 text-left">
				<h1>Proyectos</h1><a name="proyectos"></a>
			</div>
			{% if data.proyectos.results.length %}
				{% for proyecto in data.proyectos.results %}
					{{ showProyecto(proyecto) }}
				{% endfor %}
			{% endif %}
		</div>
		<hr>

	</div>
{% endblock %}
