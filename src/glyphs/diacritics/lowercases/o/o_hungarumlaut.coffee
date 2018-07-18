exports.glyphs['o_hungarumlaut'] =
	unicode: 'ő'
	glyphName: 'ohungarumlaut'
	characterName: 'LATIN SMALL LETTER O WITH DOUBLE ACUTE'
	base: 'o'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - thickness # TODO
					y: parentAnchors[0].y
		1:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + thickness # TODO
					y: parentAnchors[0].y
