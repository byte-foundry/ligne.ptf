exports.glyphs['O_cap_Ohungarumlaut'] =
	unicode: 'Ő'
	glyphName: 'Ohungarumlaut'
	characterName: 'LATIN CAPITAL LETTER O WITH DOUBLE ACUTE'
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
