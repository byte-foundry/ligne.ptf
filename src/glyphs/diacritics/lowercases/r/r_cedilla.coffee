exports.glyphs['r_cedilla'] =
	unicode: 'ŗ'
	glyphName: 'rcedilla'
	characterName: 'LATIN SMALL LETTER R WITH CEDILLA'
	base: 'r'
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
