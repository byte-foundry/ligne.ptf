exports.glyphs['U_cap_hungarumlaut'] =
	unicode: 'Ű'
	glyphName: 'Uhungarumlaut'
	characterName: 'LATIN CAPITAL LETTER U WITH DOUBLE ACUTE'
	base: 'U_cap'
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
