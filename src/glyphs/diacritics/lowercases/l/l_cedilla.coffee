exports.glyphs['l_cedilla'] =
	unicode: 'ļ'
	glyphName: 'lcedilla uni013C'
	characterName: 'LATIN SMALL LETTER L WITH CEDILLA'
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
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
