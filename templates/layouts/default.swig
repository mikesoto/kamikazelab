{% import "../mixins/flash-messages.swig" as FlashMessages %}

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>{{ title|default("kamikazelab") }}</title>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">



		<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css' rel='stylesheet' type='text/css'>



		{# Customise the stylesheet for your site by editing /public/styles/site.sass #}
		<link href="/styles/site.css" rel="stylesheet">

		{# This file provides the default styling for the KeystoneJS Content Editor #}
		{%- if user and user.canAccessKeystone -%}
			<link href="/keystone/styles/content/editor.min.css" rel="stylesheet">
		{%- endif -%}

		{# HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
		   Safely remove this block if you are not targeting IE8 #}
		<!--[if lt IE 9]>
			<script src="//cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.js"></script>
			<script src="//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		{# Include template-specific stylesheets by extending the css block #}
		{%- block css %}{% endblock -%}

		{# Add any other template-specific HEAD tags by extending the head block #}
		{%- block head %}{% endblock %}
	</head>
	<body>

		{# HEADER #}
		<!-- <div id="header" class="container"> -->

			{# Customise your site"s navigation by changing the navLinks Array in ./routes/middleware.js
			   ... or completely change this header to suit your design. #}
			<!-- <div role="navigation" class="navbar navbar-default navbar-fixed-top navbar-main">
				<div class="container-fluid">
					<div class="navbar-header">
						<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="/">
							<img src="/images/logo-kamikazelab.png" class="img img-responsive">
						</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">

						</ul>
						<ul class="nav navbar-nav navbar-right">
							{%- for link in navLinks -%}
								{%- set linkClass = '' -%}
								{%- if link.key == section -%}
									{%- set linkClass = ' class="active"' -%}
								{%- endif %}
								<li{{ linkClass | safe }}>
									<a href="{{ link.href }}">{{ link.label }}</a>
								</li>
							{%- endfor %}
						</ul>
					</div>
				</div>
			</div>
		</div> -->

		{# BODY #}
		<!-- <div id="body"> -->
			{# NOTE:
			   There is no .container wrapping class around body blocks to allow more flexibility in design.
			   Remember to include it in your templates when you override the intro and content blocks! #}

			{# The Intro block appears above flash messages (used for temporary information display) #}
			{%- block intro -%}{%- endblock -%}

			{# Flash messages allow you to display once-off status messages to users, e.g. form
			   validation errors, success messages, etc. #}
			{{ FlashMessages.renderMessages(messages) }}

			{# The content block should contain the body of your template"s content #}
			{%- block content -%}{%- endblock -%}
		<!-- </div> -->

		{# FOOTER #}
		<div class="footer">
			<div class="footer-wrapper">
				<img src="images/footer-bg.jpg" class="img-footer">
				<div class="footer-overlay">
					<div class="schema">
						<div class="title-footer">Encuéntranos</div>
						<p>Juan Salvador Agraz #40.</p>
						<p>Edificio Eurocenter.</p>
						<p>Col. Lomas de Santa Fe.</p>
						<p>México D.F.</p>
						<p>C.P. 05109</p>
						<p class="tel">t. 40 40 79 79</p>
						<p><a href="https://goo.gl/maps/QQ9WX">Ir a Google Maps</a></p>
					</div>
					<div class="follow">
						<div class="title-footer">Síguenos</div>
						<div class="follow-icons">
							<div class="single-follow-icon">
								<a href="http://www.facebook.com/KamikazeLab" target="_blank">
									<img src="images/facebook.png">
								</a>
							</div>
							<div class="single-follow-icon">
								<a href="http://twitter.com/KamikazeLab" target="_blank">
									<img src="images/twitter.png">
								</a>
							</div>
							<div class="single-follow-icon">
								<a href="http://plus.google.com/114926256044013113957/about" target="_blank">
									<img src="images/google.png">
								</a>
							</div>
							<div class="single-follow-icon">
								<a href="http://www.linkedin.com/company/kamikaze-lab" target="_blank">
									<img src="images/linkedIn.png">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		{# JAVASCRIPT #}

		{# jQuery 1.11.3 is included by default, and required by both Bootstrap
			and the KeystoneJS Content Editor. If you are not targeting IE8,
			you can upgrade to 2.1.4 (also bundled) for better performance. #}
		<script src="/js/jquery/jquery-1.11.3.min.js"></script>

		{# Customise which Bootstrap javascript files are served by including
			them specifically here, instead of bootstrap-3.3.5.min.js #}
		<!-- <script src="/js/bootstrap/bootstrap-3.3.5.min.js"></script> -->

		{# The KeystoneJS Content Editor provides support for ks-editable data attributes,
			which generate links to edit content for users who can access Keystone #}
		{% if user and user.canAccessKeystone -%}
			<script src="/keystone/js/content/editor.js"></script>
		{%- endif -%}

		{# Add scripts that are globally required by your site here. #}
		<!-- <script src="js/main.js"></script> -->
		<script src="js/fold.js"></script>
		<script src="js/container-fluid.js"></script>
		{# Include template-specific javascript files by extending the js block #}
		{%- block js -%}{%- endblock -%}
	</body>
</html>
