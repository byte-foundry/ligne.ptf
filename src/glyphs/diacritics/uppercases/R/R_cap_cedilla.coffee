exports.glyphs['R_cap_cedilla'] =
	unicode: 'Ŗ'
	glyphName: 'Rcedilla'
	characterName: 'LATIN CAPITAL LETTER R WITH CEDILLA'
	base: 'R_cap'
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
