exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: Math.max( 50 * spacing + 75, 20 + serifWidth )
		spacingRight: 50 * spacing + 16
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
		1: # cedilla
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (thickness * contours[0].nodes[0].expand.distr)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						Math.min(
							xHeight - 285 -
							( 40 / defaultThickness ) * thickness + 40 -
							35 * width + 35 -  # points go down when width increase
							xHeight / 2  * aperture * apertureTop + xHeight / 2, # get the same coefficient than in the letter b
							xHeight - contours[1].nodes[1].expand.width - 40, # avoid the extremity to be above the next node
						),
						0 # points should never be lower than the baseline
					)
					dirOut: contours[1].nodes[0].expand.angle + ( 20 / 180 ) * Math.PI - Math.PI / 2
					tensionOut: 1.2
					expand:
						width: Math.max(
							( 18 / defaultThickness ) * thickness,
							( 18 / defaultThickness ) * thickness / aperture * apertureTop
						) * contrast * contrastExtremity
						angle: Math.min(
							( - 20 / 180 ) * Math.PI,
							Math.max(
								( - 20 / 180 ) * Math.PI + Math.PI / 2 * aperture * apertureTop - Math.PI / 2,
								Utils.lineAngle(
									{
										x: contours[1].nodes[0].x,
										y: contours[1].nodes[0].y
									},
									{
										x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].x ) * ( 220 / 461 ) + 30 * aperture * apertureTop - 30,
										y: xHeight + overshoot # The line above is an approximation of contours[1].nodes[1].x but otherwise there is a circular dependency
									}
								) + Math.PI / 2 + ( 15 / 180 ) * Math.PI
							)
						)
						distr: 1
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 77 + ( 40 / defaultThickness ) * thickness ) + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + thickness * 0.75
					)
					y: xHeight + overshoot
					typeIn: 'smooth'
					typeOut: 'line'
					expand:
						width: ( ( 100 + 52  * contrast ) / defaultThickness ) * thickness
						angle: ( 260 / 180 ) * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					typeIn: 'line'
					expand:
						width: contours[1].nodes[1].expandedTo[0].y - contours[1].nodes[1].expandedTo[1].y
						angle: - Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
