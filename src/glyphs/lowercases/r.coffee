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
						xHeight - 285 -
						( 40 / 142 ) * thickness + 40 -
						35 * width + 35, # points go down when width increase
						0 # points should never be lower than the baseline
					)
					dirOut: Math.PI / 2
					tensionOut: 1.2
					expand:
						width: ( 18 / 141 ) * thickness * contrast * contrastExtremity
						angle: - 20 / 180 * Math.PI
						distr: 1
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 77 + ( 40 / 142 ) * thickness ) + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + thickness * 0.75
					)
					y: xHeight + overshoot
					typeIn: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 152 / 141 ) * thickness * contrast
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
