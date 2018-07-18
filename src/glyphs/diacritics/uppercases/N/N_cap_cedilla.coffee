exports.glyphs['N_cap_cedilla'] =
	unicode: 'Ņ'
	glyphName: 'Ncedilla'
	characterName: 'LATIN CAPITAL LETTER N WITH CEDILLA'
	base: 'N_cap'
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
					x: parentAnchors[1].x
					y: parentAnchors[1].y
