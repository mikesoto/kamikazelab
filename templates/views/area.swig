{% extends "../layouts/default.swig" %}
{% block css %}
	<style type="text/css">
		/* Phone */
		@media all and (max-width: 767px){
			.bg-header {
				background-image: url(/images/areas/{{ data.area.section.bg_img_header_phone.filename }})
			}
		}
		/* Tablet */
		@media all and (min-width: 768px ) and (max-width: 1199px){
			.bg-header {
				background-image: url(/images/areas/{{ data.area.section.bg_img_header_tablet.filename }});
			}
		}
		/* Desktop */
		@media all and (min-width: 1200px){
			.bg-header {
				background-image: url(/images/areas/{{ data.area.section.bg_img_header_desktop.filename }});
			}
		}
		
	</style>
{% endblock %}
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
	<div class="container-area">
		<div class="bg-header">
			<div class="bg-header__title">
				{{ data.area.title | safe }}
			</div>
		</div>
		<div class="content-bck">
			<div class="content">
				<div class="content__title">
					{{ data.area.section.main_title | safe }}
				</div>
				<div class="content__img" style="background-image: url(/images/areas/{{ data.area.section.bck_1_img.filename }});"></div>
				<div class="content__text">
					{{ data.area.section.bck_1_txt | safe }}
				</div>
			</div>
			<div class="content bck-2">
				<div class="content__img bck-2__img" style="background-image: url(/images/areas/{{ data.area.section.bck_2_img.filename }});"></div>
				<div class="content__text">
					{{ data.area.section.bck_2_txt | safe }}
				</div>
			</div>
			<div class="content bck-3">
				<div class="content__img bck-3__img" style="background-image: url(/images/areas/{{ data.area.section.bck_3_img.filename }});"></div>
				<div class="content__text bck-3__text">
					{{ data.area.section.bck_3_txt | safe }}
				</div>
			</div>
		</div>
	</div>
	<div class="projects-btns">
		<div class="btn-prev">
			{% if data.prev_area %}
				<a href="{{ data.prev_area.slug }}" class="label label-default">ANTERIOR</a>
			{% endif %}
		</div>
		<div class="btn-next">
			{% if data.next_area %}
				<a href="{{ data.next_area.slug }}" class="label label-default">SIGUIENTE</a>
			{% endif %}
		</div>
	</div>
{% endblock %}
