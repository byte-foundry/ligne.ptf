exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: Math.max( 50 * spacing + 70, 20 + serifWidth )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
		1: # d croat
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: Math.min(
						Math.max(
							( contours[0].nodes[1].y + contours[0].nodes[3].y ) / 2 * aperture * apertureBottom - 5, # (-5) allows to select both extremities of this contour
							contours[0].nodes[1].y + contours[0].nodes[1].expand.width + 20 # avoid the extremity to be under the next node
						),
						xHeight / 2 # extremities should never cross themselves
					)
					dirOut: contours[0].nodes[0].expand.angle - Math.PI / 2
					expand:
						width: Math.max(
							( 45 / defaultThickness ) * thickness,
							( 45 / defaultThickness ) * thickness / aperture * apertureBottom
						) * contrast * contrastExtremity
						angle: Math.max(
							Math.min(
								Math.PI + Math.PI / 2 * aperture * apertureBottom - Math.PI / 2,
								Math.PI
							),
							Utils.lineAngle(
							  { x: contours[0].nodes[1].x, y: contours[0].nodes[1].y },
								{ x: contours[0].nodes[0].x, y: contours[0].nodes[0].y }
							) + Math.PI / 2 + ( 15 / 180 ) * Math.PI
						)
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x + contours[0].nodes[0].expand.width - contours[0].nodes[2].expandedTo[0].x ) * ( 240 / 460 )
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
					  width: Math.max(
					    ( 127 / defaultThickness ) * thickness * contrast,
					    thickness / 2 # in high contrast, it's not the thickness which should be reduced, but the angle.
					  )
					  angle: Math.max(
					    Math.acos(
					      Math.min( 0.99, Math.max( - 0.99, # we don't want acos(1)
					        ( ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) / 2 - ( contours[0].nodes[1].x - contours[0].nodes[2].expandedTo[1].x ) ) / contours[0].nodes[1].expand.width
					    ))),
							Utils.lineAngle(
								{ x: contours[0].nodes[1].x, y: contours[0].nodes[1].y },
								{ x: contours[0].nodes[0].x + contours[0].nodes[0].expand.width, y: contours[0].nodes[0].y }
							) - ( 15 / 180 ) * Math.PI # we want to go a little bit over the angle defined above
					  )
					  distr: 0
				2:
					x: spacingLeft + (35/defaultThickness) * thickness
					y: xHeight / 2
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 142 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: Math.max(
					    ( 127 / defaultThickness ) * thickness * contrast,
					    thickness / 2 # in high contrast, it's not the thickness which should be reduced, but the angle.
					  )
						angle: Math.min(
						  - Math.PI / 2 + Math.asin(
						    Math.min( 0.99, Math.max( - 0.99, # we don't want asin(1)
						      ( ( contours[0].nodes[4].x - contours[0].nodes[2].expandedTo[1].x ) / 2 - ( contours[0].nodes[3].x - contours[0].nodes[2].expandedTo[1].x ) ) / contours[0].nodes[3].expand.width
						  ))),
						  Utils.lineAngle(
						    { x: contours[0].nodes[3].x, y: contours[0].nodes[3].y },
						    { x: contours[0].nodes[4].x + contours[0].nodes[4].expand.width, y: contours[0].nodes[4].y }
						  ) + ( 15 / 180 ) * Math.PI # we want to go a little bit over the angle defined above
						)
						distr: 0
				4:
					x: contours[0].nodes[0].x
					y: Math.max(
						Math.min(
							contours[0].nodes[3].y - ( contours[0].nodes[3].y + contours[0].nodes[1].y ) / 2 * aperture * apertureTop + 5, # (+5) allows to select both extremities of this contour
							contours[0].nodes[3].y - contours[0].nodes[3].expand.width - 20 # avoid the extremity to be above the next node
						),
						xHeight / 2 # extremities should not cross
					)
					dirIn: contours[0].nodes[4].expand.angle + Math.PI / 2
					expand:
						width: Math.max(
							( 45 / defaultThickness ) * thickness,
							( 45 / defaultThickness ) * thickness / aperture * apertureTop
						) * contrast * contrastExtremity
						angle: Math.min(
							Math.max(
								Math.PI - Math.PI / 2 * aperture * apertureTop + Math.PI / 2,
								Math.PI
							),
							Utils.lineAngle(
							  { x: contours[0].nodes[4].x, y: contours[0].nodes[4].y },
							  { x: contours[0].nodes[3].x, y: contours[0].nodes[3].y }
							) + Math.PI / 2 - ( 15 / 180 ) * Math.PI
						)
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + ( 312 + ( 40 / defaultThickness ) * thickness ) + 200 * width - (35),
						contours[0].nodes[2].expandedTo[1].x + ( contours[1].nodes[0].expand.width * ( 1 - contours[1].nodes[0].expand.distr ) ) + minSpace
					)
					y: 0
					typeOut: 'ligne'
					expand:
						width: ( 142 / defaultThickness ) * thickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: ascenderHeight
					typeIn: 'ligne'
					expand:
						width: ( 142 / defaultThickness ) * thickness
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)

		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
