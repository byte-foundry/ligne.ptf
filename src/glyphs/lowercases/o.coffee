exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 36
		spacingRight: 50 * spacing + 36
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
			left: 0
			right: 0
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + ((140/defaultThickness) * thickness * contours[0].nodes[0].expand.distr)
					y: ( contours[0].nodes[1].y + contours[0].nodes[3].y ) / 2
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 140 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 122 / defaultThickness ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 309 + ( 40 / defaultThickness ) * thickness ) + 200 * width - (35),
						contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expand.width * ( 1 - contours[0].nodes[2].expand.distr ) ) + minSpace
					)
					y: contours[0].nodes[0].y
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 140 / defaultThickness ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 122 / defaultThickness ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
