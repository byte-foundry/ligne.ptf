exports.glyphs['T_cap_cedilla'] =
	unicode: 'Ţ'
	glyphName: 'Tcedilla'
	characterName: 'LATIN CAPITAL LETTER T WITH CEDILLA'
	base: 'T_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
