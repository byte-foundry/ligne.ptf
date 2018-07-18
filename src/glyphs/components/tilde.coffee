exports.glyphs['tilde'] =
	global: true
	glyphName: "asciitilde"
	characterName: "TILDE"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y - 10
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
