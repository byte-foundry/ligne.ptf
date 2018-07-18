exports.glyphs['ogonek_glyph'] =
	unicode: '˛'
	glyphName: 'ogonek'
	characterName: 'OGONEK'
	ot:
		advanceWidth: spacingLeft + 250 * width + spacingRight #TODO
	parameters:
		spacingLeft: 50 * spacing + 45 #TODO
		spacingRight: 50 * spacing + 45 #TODO
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	anchors:
		0:
			x: spacingLeft + 125 * width #TODO
			y: 0 # TODO
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
