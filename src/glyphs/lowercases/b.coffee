exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: Math.max( 50 * spacing + 70, 20 + serifWidth )
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
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
					y: ascenderHeight
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						Math.min(
							contours[1].nodes[1].y - ( contours[1].nodes[1].y + contours[1].nodes[3].y ) / 2 * aperture * apertureTop + 5, # (+5) allows to select both extremities of this contour
							xHeight - contours[1].nodes[1].expand.width # avoid the extremity to be above the next node
						),
						xHeight / 2 # extremities should not cross
					)
					dirOut: contours[1].nodes[0].expand.angle - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: Math.max(
							( 45 / 142 ) * thickness,
							( 45 / 142 ) * thickness / aperture * apertureTop
						) * contrast * contrastExtremity
						angle: Math.min(
							0 + Math.PI / 2 * aperture * apertureTop - Math.PI / 2,
							0
						)
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * ( 220 / 461 ) +
						30 * aperture * apertureTop - 30 # when the aperture is small, we have to reequilibrate the curve
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 122 / 142 ) * thickness * contrast
						angle: Math.PI / 2 + Math.PI - Math.asin(
							Math.min( 0.99, Math.max( -0.99, # we don't want asin(1)
								(
									( contours[1].nodes[1].x - contours[1].nodes[0].expandedTo[1].x ) -
									( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) / 2
								) / contours[1].nodes[1].expand.width
						))) # the bottom point of this node is always in the middle of the curve
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 309 + ( 40 / 142 ) * thickness ) + 200 * width - (35),
						contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expand.width * ( 1 - contours[1].nodes[2].expand.distr ) ) + minSpace
					)
					y: ( contours[1].nodes[1].y + contours[1].nodes[3].y ) / 2
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 140 / 142 ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * ( 220 / 461 ) +
						30 * aperture * apertureBottom - 30 # when the aperture is small, we have to reequilibrate the curve
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 122 / 142 ) * thickness * contrast
						angle: - Math.PI / 2 + Math.PI + Math.asin(
							Math.min( 0.99, Math.max( -0.99, # we don't want asin(1)
								(
									( contours[1].nodes[3].x - contours[1].nodes[4].expandedTo[1].x ) -
									( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) / 2
								) / contours[1].nodes[3].expand.width
						))) # the bottom point of this node is always in the middle of the curve
						distr: 0
				4:
					x: contours[1].nodes[0].x
					y: Math.min(
						Math.max(
							( contours[1].nodes[1].y + contours[1].nodes[3].y ) / 2 * aperture * apertureBottom - 5, # (-5) allows to select both extremities of this contour
							contours[1].nodes[3].y + contours[1].nodes[3].expand.width # avoid the extremity to be above the next node
						),
						xHeight / 2 # extremities should not cross
					)
					dirIn: contours[1].nodes[4].expand.angle + Math.PI / 2
					expand:
						width: Math.max(
							( 45 / 142 ) * thickness,
							( 45 / 142 ) * thickness / aperture * apertureBottom
						) * contrast * contrastExtremity
						angle: Math.max(
							0 - Math.PI / 2 * aperture * apertureBottom + Math.PI / 2,
							0
						)
						distr: 1
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
