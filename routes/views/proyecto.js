var keystone = require('keystone');

exports = module.exports = function(req, res) {
	
	var view = new keystone.View(req, res);
	var locals = res.locals;
	
	// Set locals
	locals.section = 'proyectos';
	locals.filters = {
		proyecto: req.params.proyecto
	};
	locals.data = {
		proyectos: []
	};
	
	// Load the current proyecto
	view.on('init', function(next) {
		
		var q = keystone.list('Proyecto').model.findOne({
			state: 'published',
			slug: locals.filters.proyecto
		}).populate('author categories');
		
		q.exec(function(err, result) {
			locals.data.proyecto = result;
			next(err);
		});
		
	});
	
	// Load other proyectos
	view.on('init', function(next) {
		
		var q = keystone.list('Proyecto').model.find().where('state', 'published').sort('-publishedDate').populate('author').limit('10');
		
		q.exec(function(err, results) {
			locals.data.proyectos = results;
			next(err);
		});
		
	});
	
	// Render the view
	view.render('proyecto');
	
};
