exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: Math.max( 50 * spacing + 75, 20 + serifWidth )
		spacingRight: Math.max( 50 * spacing + 65, 20 + serifWidth )
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
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						xHeight - 238 -
						35 * width + 35, # points go down when width increase
						0 # points should never be lower than the baseline
					)
					dirOut: Math.PI / 2
					tensionOut: 1.2
					expand:
						width: ( 26 / 141 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0
				1:
					x: Math.min(
						contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * ( 178 / 361 ), # point is ±50% between the previous
						contours[1].nodes[2].expandedTo[1].x - Math.min( 183 * width, thickness ) # when width is increased, we keep the curve smooth from the second stem
					)
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 132 / 141 ) * thickness * contrast
						angle: Math.PI / 2 - Math.asin(
							Math.min( 0.99, Math.max( -0.99, # we don't want asin(1)
								(
									( contours[1].nodes[1].x - contours[1].nodes[0].x ) -
									( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].x ) / 2
								) / contours[1].nodes[1].expand.width
						))) # the bottom point of this node is always in the middle of the curve
						distr: 1
				2:
					x: contours[1].nodes[3].x
					y: Math.max( xHeight - 197 - (8/141) * thickness - 35 * width + 35, 0 )
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 145 / 141 ) * thickness
						angle: Math.PI + ( 193 / 180 ) * Math.PI
						distr: 0.75
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 246 + ( 40 / 142 ) * thickness ) + 200 * width - (40), # thickness is related to width
						contours[0].nodes[0].expandedTo[1].x + ( thickness * contours[1].nodes[3].expand.distr ) + minSpace # we set a minimum space between the stems
					)
					y: 0
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
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
			parameters:
				serifWidth: Math.min( serifWidth, ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10 )
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
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[0]
					noneAnchor: contours[1].nodes[3].expandedTo[0]
					opposite: contours[1].nodes[3].expandedTo[1]
			parameters:
				serifWidth: Math.min( serifWidth, ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10 )
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[3].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
