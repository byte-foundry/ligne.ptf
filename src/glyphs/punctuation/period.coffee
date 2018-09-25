exports.glyphs['period'] =
	unicode: '.'
	glyphName: 'period'
	characterName: 'FULL STOP'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 58
		spacingRight: 50 * spacing + 58
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: spacingLeft + ( 195 / defaultThickness ) * thickness / 2
			y: - overshoot
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: Math.PI
					type: 'smooth'
				1:
					x: contours[0].nodes[0].x - ( 195 / defaultThickness ) * thickness / 2
					y: anchors[0].y + ( 195 / defaultThickness ) * thickness / 2
					dirOut: Math.PI / 2
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + ( 190 / defaultThickness ) * thickness
					dirOut: 0
					type: 'smooth'
				3:
					x: contours[0].nodes[0].x + ( 195 / defaultThickness ) * thickness / 2
					y: contours[0].nodes[1].y
					dirOut: - Math.PI / 2
					type: 'smooth'
