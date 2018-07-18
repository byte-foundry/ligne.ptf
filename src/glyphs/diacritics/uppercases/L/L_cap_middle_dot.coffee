exports.glyphs['L_cap_cedilla'] =
	unicode: 'Ŀ'
	glyphName: 'Lmiddledot'
	characterName: 'LATIN CAPITAL LETTER L WITH MIDDLE DOT'
	base: 'L_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
