exports.glyphs['k_cedilla'] =
	unicode: 'ķ'
	glyphName: 'kcedilla'
	characterName: 'LATIN SMALL LETTER K WITH CEDILLA'
	base: 'k'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
