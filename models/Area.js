var keystone = require('keystone');
var Types = keystone.Field.Types;

var Area = new keystone.List('Area', {
	label: 'Areas',
	singular: 'Area',
	track: true,
	//nocreate: true,
	//nodelete: true,
	autokey: { path: 'slug', from:'name', unique:true}
});

Area.add({
	name: {
		type: Types.Text, 
		required: true, 
		initial: true,
		index: true,
		label: "Area"
	},
	title: { 
		type: Types.Html, 
		wysiwyg: true, 
		height: 40 ,
		required: true,
		initial:false,
		label: "Título",
		default: 'Título'
	},
	description: {
		type: Types.Html, 
		wysiwyg: true, 
		height: 40 ,
		required: true,
		initial: false,
		default: 'Soy el texto que se mostrará en el home',
		label: "Descripción del área"
	},
	background_color: { 
		type: String, 
		label: 'Color de Fondo', 
		required: true,
		default: 'Soy el color que se mostrará al tener hover (formato hexadecimal, ejemplo: #bf2b49)'
	},
	background_desktop: {
		type: Types.LocalFile,
		dest: 'public/images/areas/',
		required: true,
		initial: false,
		label: "Imagen de fondo (1400x780)"
	},
	background_tablet: {
		type: Types.LocalFile,
		dest: 'public/images/areas/',
		required: true,
		initial: false,
		label: "Imagen de fondo (tablet)"
	},
	background_phone: {
		type: Types.LocalFile,
		dest: 'public/images/areas/',
		required: true,
		initial: false,
		label: "Imagen de fondo (teléfono)"
	}
});

Area.defaultColumns = 'name|20%, title|80%';
Area.register();