var keystone = require('keystone');
var async = require('async');

exports = module.exports = function(req, res) {
	
	var view = new keystone.View(req, res);
	var locals = res.locals;
	// Init locals
	locals.data = {
		video: '',
		proyectos: [],
		areas: []
	};
	
	// locals.section is used to set the currently selected
	// item in the header navigation.
	locals.section = 'home';
	
	view.on('init', function(next) {
		// Load the videos
		var q = keystone.list('Video').model.find().where('state', 'published').sort('-publishedDate');
		//get a random video from results
		q.exec(function(err, results) {
			locals.data.video = results[Math.floor(Math.random() * results.length)];
		});

		// Load the proyectos
		var q = keystone.list('Proyecto').paginate({
				page: req.query.page || 1,
				perPage: 8,
				maxPages: 10,
				filters: {
					'state': 'published'
				}
			})
			.sort('publishedDate')
			.populate('author categories');
		
		q.exec(function(err, results) {
			locals.data.proyectos = results;
			next(err);
		});
		
	});

	view.on('init', function(next){
		var q = keystone.list('Area').model.find().sort('createdAt').limit(4);
		q.exec(function(err,results){
			if (err) return res.err(err);
			if (!results){
				return res.status(404).render('errors/404');
			}
			locals.data.areas = results;
			next();
		});
	});


	// Render the view
	view.render('index');
	
};
