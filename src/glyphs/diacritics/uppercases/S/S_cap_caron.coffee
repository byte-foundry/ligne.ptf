exports.glyphs['S_cap_caron'] =
	unicode: 'Š'
	glyphName: 'Scaron'
	characterName: 'LATIN CAPITAL LETTER S WITH CARON'
	base: 'S_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
