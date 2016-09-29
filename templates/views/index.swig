{% extends "../layouts/default.swig" %}

{% block css %}
	<style type="text/css">
		{% for area in data.areas %}
			.area-{{ loop.index }} {
				background-image: url(/images/areas/{{ area.background_desktop.filename }});
			}
			.area-{{ loop.index }}:hover {
				background: {{ area.background_color }};
				/*-webkit-transform: scale(1.15);
                -ms-transform: scale(1.15);
				transform: scale(1.15);*/
				cursor: pointer;
			}
		{% endfor %}
		/* Phone */
		@media all and (max-width: 767px){
			.video-wrapper {
				background-image: url(/videos/alts/{{ data.video.alt_image_mobile.filename}})
			}
		}
		/* Tablet */
		@media all and (min-width: 768px ) and (max-width: 1199px){
			.video-wrapper {
				background-image: url(/videos/alts/{{ data.video.alt_image_tablet.filename}});
			}
		}
		/* Desktop */
		@media all and (min-width: 1200px){
			.video-wrapper {
				background: black;
			}
		}
		
	</style>
{% endblock %}
{% block content %}
		<!-- header -->
		<div class="menu-kamikaze-home">
			<div class="logo">
				<a href="/">
					<img src="images/logo-kamikazelab.png">
				</a>
			</div>
			<div class="sections-desktop">
				<ul class="nav">
					<li><a href="proyectos">Proyectos</a></li>
					<li><a class="active" href="/">Inicio</a></li>
				</ul>
			</div>
		</div>
		<!-- fold -->
		<div class="fold">
			<div class="video-wrapper">
				<video id="videoId" class="background-video" src="/videos/{{ data.video.video.filename }}" autoplay="autoplay" loop="" muted="" poster=""></video>
				<div class="video-overlay"></div>
				<div class="fold-detail">
					<img src="images/logo-kamikazelab-fold.png" class="img-logo">
					<div class="intro-text">KamikazeLab es una agencia dedicada a desarrollar estrategias y soluciones tecnológicas.</div>
				</div>
				<a href="#" class="scroll-icon">
					<img src="images/scroll.png">
				</a>
			</div>
		</div>

		<!-- container -->
		<div class="container-fluid">
			<!-- division -->
			<div class="division">
				<div class="division-wrapper">
					<img src="images/division.png" class="img-division">
					<div class="division-overlay">
						<div class="agency">
							<div class="content-agency">
								<h2>Creativa</h2>
								<p>Nuestras ideas buscan innovar en el mundo digital que cambia constantemente.</p>
							</div>
						</div>
						<div class="lab">
							<div class="content-lab">
								<h2>Analítica</h2>
								<p>Sustentadas por toda la información que nos da el mundo digital para poder hacer llegar el mensaje a la audiencia correcta.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- what-we-do -->
			<div class="what-we-do">
				<!-- areas -->
				<div class="areas">
					{% for area in data.areas %}
						<div class="area">
							<a href="/area/{{ area.slug }}" class="area__link area-{{ loop.index }}">
								<div class="area__title area-{{ loop.index }}-title">
									{{ area.title | safe }}
								</div>
								<div class="area__hover area-{{ loop.index }}-hover" style=" display: none; ">
									<div class="title-bck">
										<div class="title-txt">
											{{ area.title | safe }}
										</div>
									</div>
									<div class="description-bck">
										<div class="description-txt">
											{{ area.description | safe }}
										</div>
									</div>
								</div>
							</a>
						</div>
					{% endfor %}
				</div>
			</div>
			<!-- projects -->
			<div class="projects">
				<div class="title">
					<a href="proyectos"><h2>PROYECTOS</h2></a>
				</div>
				<div class="grid-projects">
					{% if data.proyectos.results.length %}
						{% for proyecto in data.proyectos.results %}
							{% if loop.index == 1 %}
								<div class="contenedor1" style="background-color:{{ proyecto.backround_color}};">
									<div class="icon-agency">
										<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
									</div>
									<div class="image">
										<img src="/images/proyectos/{{ proyecto.image_primary.filename }}" class="img-project" alt="Imagen principal del proyecto">
									</div>
									<div class="name">{{ proyecto.title }}</div>
									<div class="goToProject">
										<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
									</div>
								</div>
							{% endif %}
							{% if loop.index == 2 %}
								<div class="contenedor2" style="background-color:{{ proyecto.backround_color}};">
									<div class="icon-agency">
										<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
									</div>
									<div class="image">
										<img src="/images/proyectos/{{ proyecto.image_primary.filename }}" class="img-project" alt="Imagen principal del proyecto">
									</div>
									<div class="name">{{ proyecto.title }}</div>
									<div class="goToProject">
										<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
									</div>
								</div>
							{% endif %}
							{% if loop.index == 3 || loop.index == 4 || loop.index == 7 || loop.index == 8 %}
								<div class="contenedor3" style="background-color:{{ proyecto.backround_color}};">
									<div class="icon-agency">
										<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
									</div>
									<div class="image">
										<img src="/images/proyectos/{{ proyecto.image_small.filename }}" class="img-project" alt="Imagen principal del proyecto">
									</div>
									<div class="name">{{ proyecto.title }}</div>
									<div class="goToProject">
										<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
									</div>
								</div>
							{% endif %}
							{% if loop.index == 5 %}
								<div class="contenedor5" style="background-color:{{ proyecto.backround_color}};">
									<div class="icon-agency">
										<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
									</div>
									<div class="image">
										<img src="/images/proyectos/{{ proyecto.image_primary.filename }}" class="img-project" alt="Imagen principal del proyecto">
									</div>
									<div class="name">{{ proyecto.title }}</div>
									<div class="goToProject">
										<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
									</div>
								</div>
							{% endif %}
							{% if loop.index == 6 %}
								<div class="contenedor6" style="background-color:{{ proyecto.backround_color}};">
									<div class="icon-agency">
										<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
									</div>
									<div class="image">
										<img src="/images/proyectos/{{ proyecto.image_primary.filename }}" class="img-project" alt="Imagen principal del proyecto">
									</div>
									<div class="name">{{ proyecto.title }}</div>
									<div class="goToProject">
										<a href="/proyecto/{{ proyecto.slug }}">Ir a Proyecto</a>
									</div>
								</div>
							{% endif %}
						{% endfor %}
					{% endif %}
				</div>
			</div>
			<!-- projects-mobile -->
			<div class="projects-mobile">
				<div class="grid-projects">
					{% if data.proyectos.results.length %}
						{% for proyecto in data.proyectos.results %}
							<div class="project" style="background-color:{{ proyecto.backround_color}};">
								<div class="left">
									<img src="images/agencia.png" class="img-agency" alt="Icono de la agencia">
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
					{% endif %}
				</div>
			</div
		</div>

{% endblock %}

{%- block js -%}
	<script type="text/javascript">
		{% for area in data.areas %}
			$( ".area-{{ loop.index }}" ).hover(
		      	function() {
		        	$( ".area-{{ loop.index }}-title" ).css("display", "none");
		        	$( ".area-{{ loop.index }}-hover" ).css("display", "block");
		      	}, function() {
		        	$( ".area-{{ loop.index }}-title" ).css("display", "block");
		         	$( ".area-{{ loop.index }}-hover" ).css("display", "none");
		      	}
		   	);
   		{% endfor %}
	</script>
{%- endblock -%}
