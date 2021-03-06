exports.glyphs['e_caron'] =
	unicode: 'ě'
	glyphName: 'ecaron'
	characterName: 'LATIN SMALL LETTER E WITH CARON'
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
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
