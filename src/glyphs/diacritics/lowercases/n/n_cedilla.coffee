exports.glyphs['n_cedilla'] =
	unicode: 'ņ'
	glyphName: 'ncedilla'
	characterName: 'LATIN SMALL LETTER N WITH CEDILLA'
	base: 'n'
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
