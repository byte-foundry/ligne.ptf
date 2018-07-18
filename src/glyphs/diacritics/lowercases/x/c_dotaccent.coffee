exports.glyphs['x_dotaccent'] =
	unicode: 'ẋ'
	glyphName: 'xdotaccent'
	characterName: 'LATIN SMALL LETTER X WITH DOT ABOVE'
	base: 'x'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
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
