exports.glyphs['N_cap'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
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
		1: # N cedilla
			x: 0
			y: 0
		2: # Ŋ component
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
