var keystone = require('keystone');
var Types = keystone.Field.Types;

/**
 * Video Model
 * ==========
 */

var Video = new keystone.List('Video', {
	map: { name: 'title' },
	autokey: { path: 'slug', from: 'title', unique: true }
});

Video.add({
	title: { type: String, initial:true, label: 'Título'},
	state: { type: Types.Select, label: 'Status', options: 'draft, published, archived', default: 'published', index: true },
	author: { type: Types.Relationship, label: 'Autor', ref: 'User', index: true },
	publishedDate: { type: Types.Date, label: 'Fecha de Publicación', index: true, dependsOn: { state: 'published' } },
	video: { type: Types.LocalFile, label: 'Video', dest: 'public/videos' },
	alt_image_mobile: { type: Types.CloudinaryImage, label: 'Imagen Móvil' },
	alt_image_tablet: { type: Types.CloudinaryImage, label: 'Imagen Tablet' },
});

Video.defaultColumns = 'alt_image_mobile|20%, video, state|20%, author|20%';
Video.register();
