exports.glyphs['dieresis_glyph'] =
	unicode: '¨'
	glyphName: 'dieresis'
	characterName: 'DIAERESIS'
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
			y: xHeight + diacriticHeight
	components:
		0:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - thickness # TODO
					y: parentAnchors[0].y
		1:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + thickness # TODO
					y: parentAnchors[0].y
