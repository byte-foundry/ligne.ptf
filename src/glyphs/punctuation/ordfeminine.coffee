exports.glyphs['ordfeminine'] =
	unicode: 'ª'
	glyphName: 'ordfeminine'
	characterName: 'FEMININE ORDINAL INDICATOR'
	parameters:
		spacingLeft: 50 * spacing + 0 #TODO
		spacingRight: 50 * spacing + 0 #TODO
		thickness: 1.35 * thickness #TODO
	advanceWidth: base.advanceWidth * 0.504
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	base: 'a'
	transforms: Array(
		[ 'scaleX', 0.504 ], #TODO
		[ 'scaleY', 0.504 ] #TODO
		[ 'translateY', capHeight * 0.565], #TODO
		[ 'translateX', 0.496 * (spacingLeft)], #TODO
	)
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 5 #TODO
					y: -80 #TODO
			parameters:
				width: 1.16 * width #TODO
