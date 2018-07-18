exports.glyphs['grave'] =
	global: true
	glyphName: 'grave'
	characterName: 'GRAVE ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			position: if typeof parentAnchors[0].position != 'undefined' then parentAnchors[0].position else 0.5
	tags: [
		'component',
		'diacritic'
	]
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
