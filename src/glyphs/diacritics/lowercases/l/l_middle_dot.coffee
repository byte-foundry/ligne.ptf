exports.glyphs['l_cedilla'] =
	unicode: 'ŀ'
	glyphName: 'lmiddledot'
	characterName: 'LATIN SMALL LETTER L WITH MIDDLE DOT'
	base: 'l'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
