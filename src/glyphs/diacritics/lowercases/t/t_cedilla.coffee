exports.glyphs['t_cedilla'] =
	unicode: 'ţ'
	glyphName: 'tcedilla'
	characterName: 'LATIN SMALL LETTER T WITH CEDILLA'
	base: 't'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
