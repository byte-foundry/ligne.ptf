exports.glyphs['G_cap_cedilla'] =
	unicode: 'Ģ'
	glyphName: 'Gcedilla uni0122'
	characterName: 'LATIN CAPITAL LETTER G WITH CEDILLA'
	base: 'G_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla' #TODO
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
