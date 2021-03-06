exports.glyphs['O_cap_breve'] =
	unicode: 'Ŏ'
	glyphName: 'Obreve'
	characterName: 'LATIN CAPITAL LETTER O WITH BREVE'
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
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
