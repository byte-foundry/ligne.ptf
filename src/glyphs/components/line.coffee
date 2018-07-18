exports.glyphs['line'] =
	global: true
	characterName: 'VERTICAL LINE'
	#TODO
	# parameters:
	# 	thickness: Math.max( 40, Math.min( 120, thickness ))
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
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
