exports.glyphs['e_circumflex'] =
	unicode: 'ê'
	glyphName: 'ecircumflex'
	characterName: 'LATIN SMALL LETTER E WITH CIRCUMFLEX'
	base: 'e'
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
