exports.fontinfo =
	familyName: 'Prototypo Ligne'
	version: '0.1.0'
	description: 'A parametric typeface'
	tags: [
		'all',
		'latin',
		'lowercase',
		'uppercase',
		'punctuation',
		'figures',
		'diacritic',
		'smallcap'
	]
	defaultAlts: {
		# …
	}
	ascender: Math.max( ascenderHeight, capHeight ) + 50 #TODO
	descender: descender - 50 #TODO
	'cap-height': Math.max( ascenderHeight, capHeight ) + 50 #TODO
	'descendent-height': descender - 50 #TODO
