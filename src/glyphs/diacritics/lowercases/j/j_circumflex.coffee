exports.glyphs['j_circumflex'] =
	unicode: 'ĵ'
	glyphName: 'jcircumflex'
	characterName: 'LATIN SMALL LETTER J WITH CIRCUMFLEX'
	base: 'dotlessj'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
