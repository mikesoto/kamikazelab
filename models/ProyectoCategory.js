var keystone = require('keystone');

/**
 * ProyectoCategory Model
 * ==================
 */

var ProyectoCategory = new keystone.List('ProyectoCategory', {
	autokey: { from: 'name', path: 'key', unique: true }
});

ProyectoCategory.add({
	name: { type: String, label: 'Nombre', required: true },
	classname: {type: String, label: 'Class', initial: true, required: true }
});

ProyectoCategory.relationship({ ref: 'Proyecto', path: 'categories' });

ProyectoCategory.defaultColumns = 'name, classname';
ProyectoCategory.register();
