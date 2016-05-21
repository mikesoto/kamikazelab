{% extends "../layouts/default.swig" %}

{% block content %}
		<div class="menu-kamikaze-home">
			<div class="logo">
			</div></div>
		</div>
		<div class="fold">
			<div class="video-wrapper	">
				<video id="videoId" class="background-video" src="/images/animated/tumblr_static_header-gif2.gif" loop="" muted="" poster="/images/animated/tumblr_static_header-gif2.gif"></video>
				<div class="video-overlay"></div>
				<div class="fold-detail">
					<img src="images/logo-kamikazelab-fold.png" class="img-logo">
					<div class="intro-text">Kamikaze Lab es un laboratorio creativo dedicado a desarrollar estrategias y productos para el mundo digital.</div>
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
				<div class="agency">
				</div>
				<div class="lab">
				</div>
			</div>
			<!-- what-we-do -->
			<div class="what-we-do">
				<div class="text">
					<h2>¿QUÉ HACEMOS?</h2>
				</div>
				<div class="areas">
					<div class="area">
					</div>
					<div class="area">
					</div>
					<div class="area">
					</div>
					<div class="area">
					</div>
				</div>
			</div>
			<div class="projects">
				<div class="title">
					<h2>PROYECTOS</h2>
				</div>
				<div class="grid-projects">
					{% if data.proyectos.results.length %}
						{% for proyecto in data.proyectos.results %}
							<div class="project">
							</div>
						{% endfor %}
					{% endif %}
				</div>
				<!-- {% if data.proyectos.results.length %}
			      {% for proyecto in data.proyectos.results %}
					<h3 class="proyecto-title">{{ proyecto.title }}</h3>
			      {% endfor %}
			   {% endif %} -->
			</div>
		</div>

{% endblock %}
