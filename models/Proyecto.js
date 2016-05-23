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
	image_primary: { type: Types.LocalFile, label: 'Imagen Principal', dest: 'public/images/proyectos/' },
	image_medium: { type: Types.LocalFile, label: 'Imagen Mediana', dest: 'public/images/proyectos/' },
	image_small: { type: Types.LocalFile, label: 'Imagen Pequeña', dest: 'public/images/proyectos/' },
	image_ext_1: { type: Types.LocalFile, label: 'Imagen extra 1', dest: 'public/images/proyectos/extras' },
	image_ext_2: { type: Types.LocalFile, label: 'Imagen extra 2', dest: 'public/images/proyectos/extras' },
	image_ext_3: { type: Types.LocalFile, label: 'Imagen extra 3', dest: 'public/images/proyectos/extras' },
	image_ext_4: { type: Types.LocalFile, label: 'Imagen extra 4', dest: 'public/images/proyectos/extras' },
	backround_color: { type: String, label: 'Color de Fondo', required: false },
	content: {
		brief: { type: Types.Html, label: 'Extracto', wysiwyg: true, height: 150 },
		extended: { type: Types.Html, label: 'Cuerpo', wysiwyg: true, height: 400 },
		quotes: { type: Types.Html, label: 'Quotes', wysiwyg: true, height: 200 }
	},
	site_link: { type: String, label: 'URL del Sitio', required: false },
	categories: { type: Types.Relationship, label: 'Categorías', ref: 'ProyectoCategory', many: true }
});

Proyecto.schema.virtual('content.full').get(function() {
	return this.content.extended || this.content.brief;
});

Proyecto.defaultColumns = 'title, state|20%, author|20%, publishedDate|20%';
Proyecto.register();
