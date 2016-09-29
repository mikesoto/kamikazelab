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
	state: { 
		type: Types.Select, 
		label: 'Status', 
		options: 'draft, published, archived', 
		default: 'draft', 
		index: true 
	},
	publishedDate: { 
		type: Types.Date, 
		label: 'Fecha de Publicación',
		index: true, 
		dependsOn: { state: 'published' } 
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
	},
	section: {
		bg_img_header_desktop: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del header en la sección (desktop)"
		},
		bg_img_header_tablet: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del header en la sección (tablet)"
		},
		bg_img_header_phone: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del header en la sección (phone)"
		},
		main_title: { 
			type: Types.Html, 
			wysiwyg: true, 
			height: 40 ,
			required: true,
			initial:false,
			label: "Título en la sección",
			default: 'Título principal en la sección'
		},
		bck_1_img: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del primer bloque en la sección"
		},
		bck_1_txt: {
			type: Types.Html, 
			label: 'Texto del primer bloque en la sección', 
			wysiwyg: true, 
			height: 400 
		},
		bck_2_img: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del segundo bloque en la sección"
		},
		bck_2_txt: {
			type: Types.Html, 
			label: 'Texto del segundo bloque en la sección', 
			wysiwyg: true, 
			height: 400 
		},
		bck_3_img: {
			type: Types.LocalFile,
			dest: 'public/images/areas/',
			required: true,
			initial: false,
			label: "Imagen del tercer bloque en la sección"
		},
		bck_3_txt: {
			type: Types.Html, 
			label: 'Texto del tercer bloque en la sección', 
			wysiwyg: true, 
			height: 400 
		}
	}
});

Area.defaultColumns = 'name|20%, title|80%';
Area.register();