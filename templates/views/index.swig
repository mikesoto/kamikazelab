{% extends "../layouts/default.swig" %}

{% block css %}
	<style type="text/css">
		/*phone*/
		@media all and (max-width: 767px){

		}
		/* Tablet */
		@media all and (min-width: 768px ) and (max-width: 1199px){
		}
		/* Desktop */
		@media all and (min-width: 1200px){
			.area__link {
				background-image: url(/images/areas/{{ area.background_desktop.filename }});
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
				<img src="/videos/alts/{{ data.video.alt_image_tablet.filename}}" class="img-tablet">
				<img src="/videos/alts/{{ data.video.alt_image_mobile.filename}}" class="img-mobile">
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
								<!-- <img src="images/agencia.png" class="icon"> -->
								<h2>Creativa</h2>
								<p>Nuestras ideas buscan innovar en el mundo digital que cambia constantemente.</p>
							</div>
						</div>
						<div class="lab">
							<div class="content-lab">
								<!-- <img src="images/lab.png" class="icon"> -->
								<h2>Analítica</h2>
								<p>Sustentadas por toda la información que nos da el mundo digital para poder hacer llegar el mensaje a la audiencia correcta.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- what-we-do -->
			<div class="what-we-do">
				<div class="areas">
					{% for area in data.areas %}
						<div class="area">
							<div class="area__link" style="background-image: url(/images/areas/{{ area.background_desktop.filename }});">
							</div>
						</div>
					{% endfor %}
				</div>
				<!--<div class="text">
					<h2 class="default-text">¿QUÉ HACEMOS?</h2>
					<div class="strategy-hover area-hover">
						<div class="area-icon">
							<img src="images/hacemos/estrategia.png" alt="Icono del área de estrategia.">
						</div>
						<div class="content-area">
							<div class="title-area">Estrategias</div>
							<div class="content-text">
								Creamos estrategias digitales para conectar con los consumidores de nuestras marcas.
								<ul>
									<li>Estrategias 360°</li>
									<li>Estrategias de Contenido</li>
									<li>Estrategias de Consultoría</li>
									<li>Estrategias de Medios</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="experience-hover area-hover">
						<div class="area-icon">
							<img src="images/hacemos/experiencia.png" alt="Icono del área de experiencia.">
						</div>
						<div class="content-area">
							<div class="title-area">Experiencias</div>
							<div class="content-text">
								Creamos las experiencias que nuestros clientes necesitan para comunicar su mensaje. Analizamos a los usuarios para entender sus procesos y crearles experiencias de acuerdo a sus usos de internet.
							</div>
						</div>
					</div>
					<div class="develop-hover area-hover">
						<div class="area-icon">
							<img src="images/hacemos/desarrollo.png" alt="Icono del área de desarrollo.">
						</div>
						<div class="content-area">
							<div class="title-area">Desarrollos</div>
							<div class="content-text">
								Creamos plataformas inteligentes para generar soluciones por medio de sistemas digitalizados. Analizamos las tendencias y nuevos lenguajes para construir plataformas innovadoras.
							</div>
						</div>
					</div>
					<div class="rd-hover area-hover">
						<div class="area-icon">
							<img src="images/hacemos/rd.png" alt="Icono del área de performance.">
						</div>
						<div class="content-area">
							<div class="title-area">Performance</div>
							<div class="content-text">
								Generamos mensajes clave para la audiencia que busca a nuestros clientes. Optimizamos diario para tener el mejor resultado y la mejor conversión.
							</div>
						</div>
					</div>
				</div>-->
				<!--<div class="areas">
					<div class="area area-hover1">
						<img src="images/hacemos/que-hacemos1.jpg" class="img-normal" alt="Área de Estrategia">
						<img src="images/hacemos/que-hacemos1-hover.jpg" class="img-hover" alt="Área de Estrategia">
						<div class="area-overlay">
							<div class="area-text">Estrategias</div>
						</div>
					</div>
					<div class="area area-hover2">
						<img src="images/hacemos/que-hacemos2.jpg" class="img-normal" alt="Área de Experiencia">
						<img src="images/hacemos/que-hacemos2-hover.jpg" class="img-hover" alt="Área de Experiencia">
						<div class="area-overlay">
							<div class="area-text">Experiencias</div>
						</div>
					</div>
					<div class="area area-hover3">
						<img src="images/hacemos/que-hacemos3.jpg" class="img-normal" alt="Área de Desarrollo">
						<img src="images/hacemos/que-hacemos3-hover.jpg" class="img-hover" alt="Área de Desarrollo">
						<div class="area-overlay">
							<div class="area-text">Desarrollos</div>
						</div>
					</div>
					<div class="area area-hover4">
						<img src="images/hacemos/que-hacemos4.jpg" class="img-normal" alt="Área de R&amp;D">
						<img src="images/hacemos/que-hacemos4-hover.jpg" class="img-hover" alt="Área de R&amp;D">
						<div class="area-overlay">
							<div class="area-text">R&amp;D</div>
						</div>
					</div>
				</div>-->
				<!-- areas mobile -->
				<!--<div class="areas-mobile">
					<div class="area area-mobile-hover1">
						<img src="images/hacemos/que-hacemos1.jpg" class="img-normal" alt="Área de Estrategia">
						<img src="images/hacemos/que-hacemos1-hover.jpg" class="img-hover" alt="Área de Estrategia">
						<div class="area-overlay">
							<div class="area-text">Estrategias</div>
							<div class="content-text">
								Creamos estrategias digitales para conectar con los consumidores de nuestras marcas.
								<ul>
									<li>Estrategias 360°</li>
									<li>Estrategias de Contenido</li>
									<li>Estrategias de Consultoría</li>
									<li>Estrategias de Medios</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="area area-mobile-hover2">
						<img src="images/hacemos/que-hacemos2.jpg" class="img-normal" alt="Área de Experiencia">
						<img src="images/hacemos/que-hacemos2-hover.jpg" class="img-hover" alt="Área de Experiencia">
						<div class="area-overlay">
							<div class="area-text">Experiencias</div>
							<div class="content-text">
								Creamos las experiencias que nuestros clientes necesitan para comunicar su mensaje. Analizamos a los usuarios para entender sus procesos y crearles experiencias de acuerdo a sus usos de internet.
							</div>
						</div>
					</div>
					<div class="area area-mobile-hover3">
						<img src="images/hacemos/que-hacemos3.jpg" class="img-normal" alt="Área de Desarrollo">
						<img src="images/hacemos/que-hacemos3-hover.jpg" class="img-hover" alt="Área de Desarrollo">
						<div class="area-overlay">
							<div class="area-text">Desarrollos</div>
							<div class="content-text">
								Creamos plataformas inteligentes para generar soluciones por medio de sistemas digitalizados. Analizamos las tendencias y nuevos lenguajes para construir plataformas innovadoras.
							</div>
						</div>
					</div>
					<div class="area area-mobile-hover4">
						<img src="images/hacemos/que-hacemos4.jpg" class="img-normal" alt="Área de R&amp;D">
						<img src="images/hacemos/que-hacemos4-hover.jpg" class="img-hover" alt="Área de R&amp;D">
						<div class="area-overlay">
							<div class="area-text">R&amp;D</div>
							<div class="content-text">
								Generamos mensajes clave para la audiencia que busca a nuestros clientes. Optimizamos diario para tener el mejor resultado y la mejor conversión.
							</div>
						</div>
					</div>
				</div>-->
				<!-- end areas mobile -->
			</div>
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
