var keystone = require('keystone');

exports = module.exports = function(req, res) {
	
	var view = new keystone.View(req, res);
	var locals = res.locals;
	
	// Set locals
	locals.section = 'areas';
	locals.filters = {
		area: req.params.area
	};
	locals.data = {
		prev_area: '',
		next_area: ''
	};
	
	// Load the current area
	view.on('init', function(next) {
		
		var q = keystone.list('Area').model.findOne({
			state: 'published',
			slug: locals.filters.area
		});
		
		q.exec(function(err, result) {
			locals.data.area = result;
		
			//get previous area
			var qprev = keystone.list('Area').model.find({
				state: "published",
				title: {$ne: result.title},
				publishedDate: {$lt: result.publishedDate } }).sort('-publishedDate').limit(1);
			qprev.exec(function(err, resultprev) {
				if(resultprev[0]){
					locals.data.prev_area = resultprev[0];
				}
			});

			//get next area
			var qnext = keystone.list('Area').model.find({
				state: "published",
				title: {$ne: result.title},
				publishedDate: {$gt: result.publishedDate } }).sort('publishedDate').limit(1);
			qnext.exec(function(err, resultnext) {
				locals.data.next_area = resultnext[0];
			});


			next(err);
		});
		
		

	});
	
	// Render the view
	view.render('area');
	
};
