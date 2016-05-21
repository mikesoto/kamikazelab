{% extends "../layouts/default.swig" %}

{% block content %}
		<!-- Home intro Fold -->
		<div class="row text-center home-intro">
			<div class="intro-content">
				<img src="images/logo-kamikazelab-fold.png">
				<div class="intro-text">
					Kamikaze Lab es un laboratorio creativo dedicado a desarrollar estrategias y productos para el mundo digital
				</div>
			</div>
		</div>

		<!-- video example  -->
		<div class="row text-center home-agencia">
			<h1>video variable example</h1>
			video: {{ data.video.video.filename }}<br/>
			mobile: {{ data.video.alt_image_mobile.filename}}<br/>
			tablet: {{ data.video.alt_image_tablet.filename}}<br/> 
		</div>
		<!-- Home Agencia Fold -->
		<div class="row text-center home-agencia">
			<div class="col-sm-6 agencia-left">
				<i class="fa fa-rocket" aria-hidden="true"></i>
				<h1>AGENCIA</h1>
				<p class="agencia-text">
					Somos una agencia que trabaja <br>
					intensamente para innovar junto con <br>
					nuestros clientes en el mundo digital.
				</p>
			</div>
			<div class="col-sm-6 agencia-right">
				<i class="fa fa-flask" aria-hidden="true"></i>
				<h1>LABORATORIO</h1>
				<p class="agencia-text">
					Un área especializada en la <br>
					innovación de productos digitales.
				</p>
			</div>
		</div>
		

		<!-- Home Que Hacemos Fold -->
		<div class="row text-center que-hacemos">
			<div class="col-sm-12 text-left header">
				<h3 id="que-hacemos-title">QUÉ HACEMOS</h3>
				
				<div id="estrategia-description" class="row section-description">
					<div class="col-sm-1 text-right description-icon">
						<i class="fa fa-bullseye" aria-hidden="true"></i>
					</div>
					<div class="col-sm-11">
						<div class="col-sm-12">
							<p class="description-title">Estrategia</p>
						</div>
						<div class="col-sm-12">
							<p class="description-text">
								Creamos estrategias digitales para conectar con los consumidores de nuestras marcas. Creemos que la comunicación de una marca en internet debe de ser personal, y para lograrlo nos sumergimos en el mundo de nuestros clientes para crear estrategias de comunicación a la medida.
							</p>
						</div>
					</div>
				</div>

				<div id="experiencia-description" class="row section-description">
					<div class="col-sm-1 text-right description-icon">
						<i class="fa fa-compass" aria-hidden="true"></i>
					</div>
					<div class="col-sm-11">
						<div class="col-sm-12">
							<p class="description-title">Experiencia</p>
						</div>
						<div class="col-sm-12">
							<p class="description-text">
								Creamos experiencias de comunicación en internet. Diseñadores gráficos y de Front que nos especializamos en los usuarios para entender sus procesos y traducirlos a experiencias. Somos amantes de la tecnología y del diseño.
							</p>
						</div>
					</div>
				</div>

				<div id="desarrollo-description" class="row section-description">
					<div class="col-sm-1 text-right description-icon">
						<i class="fa fa-cube" aria-hidden="true"></i>
					</div>
					<div class="col-sm-11">
						<div class="col-sm-12">
							<p class="description-title">Desarrollo</p>
						</div>
						<div class="col-sm-12">
							<p class="description-text">
								Construimos plataformas inteligentes para crear soluciones por medido de sistemas digitales. Combinamos tecnologías probadas y experimentamos con nuevos lenguajes para crear plataformas innovadoras y medibles, para después traducir los datos en tendencias en los usuarios.
							</p>
						</div>
					</div>
				</div>

				<div id="randd-description" class="row section-description">
					<div class="col-sm-1 text-right description-icon">
						<i class="fa fa-cubes" aria-hidden="true"></i>
					</div>
					<div class="col-sm-11">
						<div class="col-sm-12">
							<p class="description-title">R&D</p>
						</div>
						<div class="col-sm-12">
							<p class="description-text">
								Investigamos y desarrollamos experimentos constantemente. Nos apasiona el mundo digital y sabemos que la única constante es el cambio, por lo que día a día exploramos a profundidad nuevas tendencias para llevarlas a cabo en todo lo que hacemos.
							</p>
						</div>
					</div>
				</div>

			</div>
			<div class="sections-container">
				<div id="estrategia" class="col-sm-3 section"></div>
				<div id="experiencia" class="col-sm-3 section"></div>
				<div id="desarrollo" class="col-sm-3 section"></div>
				<div id="randd" class="col-sm-3 section"></div>
			</div>
			<div class="col-sm-3"><h3 id="estrategia-section-title" class="section-text">ESTRATEGIA</h3></div>
			<div class="col-sm-3"><h3 id="experiencia-section-title" class="section-text">EXPERIENCIA</h3></div>
			<div class="col-sm-3"><h3 id="desarrollo-section-title" class="section-text">DESARROLLO</h3></div>
			<div class="col-sm-3"><h3 id="randd-section-title" class="section-text">R&D</h3></div>
		</div>





		<!-- Home Proyectos Fold -->

		{% macro showProyecto(proyecto) %}
			<div class="proyecto-content">
				{% if proyecto.image_primary.exists %}
					<a href="/proyecto/{{ proyecto.slug }}">
						<img src="{{ proyecto._.image_primary.fit(300,300) }}" class="img img-responsive">
					</a>
				{% endif %}
				<div id="move-title-{{ proyecto.slug }}" class="proyecto-title-container">
					<h3 class="proyecto-title">{{ proyecto.title }}</h3>
					<a class="btn btn-default btn-proyecto" href="/proyecto/{{ proyecto.slug }}">Ir al proyecto</a>
				</div>
			</div>
		{% endmacro %}



		<div class="row home-proyectos">
			<div class="col-sm-12 text-left header">
				<a name="proyectos"></a>
				<h1>Proyectos</h1>
			</div>
			<div class="row proyectos-container">
			{% if data.proyectos.results.length %}
				{% for proyecto in data.proyectos.results %}
					{% if loop.index == 1 %}
						<div class="col-sm-4 proyecto proyecto-tall1">
							{{ showProyecto(proyecto) }}
						</div>
					{% endif %}
					{% if loop.index == 2 %}
						<div class="col-sm-8 proyecto-divider">
							<div class="col-sm-12 proyecto-wide1">
								{{ showProyecto(proyecto) }}
							</div>
					{% endif %}
					{% if loop.index == 3 %}
							<div class="col-sm-6 proyecto proyecto-small-left1">
								{{ showProyecto(proyecto) }}
							</div>
					{% endif %}
					{% if loop.index == 4 %}
							<div class="col-sm-6 proyecto proyecto-small-right1">
								{{ showProyecto(proyecto) }}
							</div>
						</div>
					{% endif %}

					{% if loop.index == 5 %}
						<div class="col-sm-8 proyecto-divider">
							<div class="col-sm-12 proyecto proyecto-wide2" data-slug="{{ proyecto.slug }}">
								{{ showProyecto(proyecto) }}
							</div>
					{% endif %}
					{% if loop.index == 6 %}
							<div class="col-sm-6 proyecto proyecto-small-left2" data-slug="{{ proyecto.slug }}">
								{{ showProyecto(proyecto) }}
							</div>
					{% endif %}
					{% if loop.index == 7 %}
							<div class="col-sm-6 proyecto proyecto-small-right2" data-slug="{{ proyecto.slug }}">
								{{ showProyecto(proyecto) }}
							</div>
						</div>
					{% endif %}
					{% if loop.index == 8 %}
						<div class="col-sm-4 proyecto proyecto-tall2" data-slug="{{ proyecto.slug }}">
							{{ showProyecto(proyecto) }}
						</div>
					{% endif %}
				{% endfor %}
			{% endif %}
			</div>
		</div>
		<hr>

{% endblock %}
