exports.glyphs['K_cap_cedilla'] =
	unicode: 'Ķ'
	glyphName: 'Kcedilla'
	characterName: 'LATIN CAPITAL LETTER K WITH CEDILLA'
	base: 'K_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
