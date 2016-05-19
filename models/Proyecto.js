var keystone = require('keystone');
var Types = keystone.Field.Types;

/**
 * Proyecto Model
 * ==========
 */

var Proyecto = new keystone.List('Proyecto', {
	map: { name: 'title' },
	autokey: { path: 'slug', from: 'title', unique: true }
});

Proyecto.add({
	title: { type: String, label: 'Título', required: true },
	state: { type: Types.Select, label: 'Status', options: 'draft, published, archived', default: 'draft', index: true },
	author: { type: Types.Relationship, label: 'Autor', ref: 'User', index: true },
	publishedDate: { type: Types.Date, label: 'Fecha de Publicación', index: true, dependsOn: { state: 'published' } },
	image_primary: { type: Types.CloudinaryImage, label: 'Imagen Grande' },
	image_medium: { type: Types.CloudinaryImage, label: 'Imagen Mediana' },
	image_small: { type: Types.CloudinaryImage, label: 'Imagen Small' },
	image_ext_1: { type: Types.CloudinaryImage, label: 'Imagen extra 1' },
	image_ext_2: { type: Types.CloudinaryImage, label: 'Imagen extra 2' },
	image_ext_3: { type: Types.CloudinaryImage, label: 'Imagen extra 3' },
	image_ext_4: { type: Types.CloudinaryImage, label: 'Imagen extra 4' },
	content: {
		brief: { type: Types.Html, label: 'Extracto', wysiwyg: true, height: 150 },
		extended: { type: Types.Html, label: 'Cuerpo', wysiwyg: true, height: 400 }
	},
	categories: { type: Types.Relationship, label: 'Categorías', ref: 'ProyectoCategory', many: true }
});

Proyecto.schema.virtual('content.full').get(function() {
	return this.content.extended || this.content.brief;
});

Proyecto.defaultColumns = 'title, state|20%, author|20%, publishedDate|20%';
Proyecto.register();
