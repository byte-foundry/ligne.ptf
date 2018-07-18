exports.glyphs['u_hungarumlaut'] =
	unicode: 'ű'
	glyphName: 'uhungarumlaut'
	characterName: 'LATIN SMALL LETTER U WITH DOUBLE ACUTE'
	base: 'u'
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
