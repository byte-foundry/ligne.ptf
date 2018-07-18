exports.glyphs['X_cap_dotaccent'] =
	unicode: 'Ẋ'
	glyphName: 'Xdotaccent'
	characterName: 'LATIN CAPITAL LETTER X WITH DOT ABOVE'
	base: 'X_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - (11/40) * diacriticHeight # TODO
					optical: 57 # TODO
