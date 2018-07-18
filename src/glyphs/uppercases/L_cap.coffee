exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
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
		1: # L caron
			x: 0
			y: 0
		2: # L cedilla
			x: 0
			y: 0
		3: # L midlle dot
			x: 0
			y: 0
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
