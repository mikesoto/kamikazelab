var keystone = require('keystone');
var async = require('async');

exports = module.exports = function(req, res) {
	
	var view = new keystone.View(req, res);
	var locals = res.locals;
	// Init locals
	locals.section = 'proyectos';
	locals.data = {
		proyectos: [],
	};
	
	// locals.section is used to set the currently selected
	// item in the header navigation.
	locals.section = 'home';
	

	// Load the proyectos
	view.on('init', function(next) {
		var q = keystone.list('Proyecto').paginate({
				page: req.query.page || 1,
				perPage: 8,
				maxPages: 10,
				filters: {
					'state': 'published'
				}
			})
			.sort('-publishedDate')
			.populate('author categories');
		
		q.exec(function(err, results) {
			locals.data.proyectos = results;
			next(err);
		});
		
	});


	// Render the view
	view.render('index');
	
};
