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
		prev_proyecto: ''
	};
	
	// Load the current proyecto
	view.on('init', function(next) {
		
		var q = keystone.list('Proyecto').model.findOne({
			state: 'published',
			slug: locals.filters.proyecto
		}).populate('author categories');
		
		q.exec(function(err, result) {
			locals.data.proyecto = result;
		
			//get previous proyecto
			var qprev = keystone.list('Proyecto').model.find({
				state: "published",
				title: {$ne: result.title},
				publishedDate: {$lt: result.publishedDate } }).sort('-publishedDate').limit(1);
			qprev.exec(function(err, resultprev) {
				if(resultprev[0]){
					locals.data.prev_proyecto = resultprev[0];
				}
			});

			//get next proyecto
			var qnext = keystone.list('Proyecto').model.find({
				state: "published",
				title: {$ne: result.title},
				publishedDate: {$gt: result.publishedDate } }).sort('publishedDate').limit(1);
			qnext.exec(function(err, resultnext) {
				locals.data.next_proyecto = resultnext[0];
			});


			next(err);
		});
		
		

	});
	
	// Render the view
	view.render('proyecto');
	
};
