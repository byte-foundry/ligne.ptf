exports.glyphs['O_cap_tilde'] =
	unicode: 'Õ'
	glyphName: 'Otilde'
	characterName: 'LATIN CAPITAL LETTER O WITH TILDE'
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
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - (1/40) * diacriticHeight
