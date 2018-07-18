exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: 100
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
		1:
			ogonek: 0 #TODO Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[1].expandedTo[1].handleOut, contours[0].nodes[0].expandedTo[1], contours[0].nodes[0].expandedTo[1].handleIn, 100 * width + 75 - ( 75 / 115 ) * thickness * contrast, false, 10 )
		2:
			x: anchors[1].ogonek.x
			y: anchors[1].ogonek.y
			normal: anchors[1].ogonek.normal
			middle: 0 #TODO contours[0].nodes[1].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 0
					y: 0
					typeOut: 'line'
					expand:
						width: 0
						angle: 0
						distr: 0
						#TODO
