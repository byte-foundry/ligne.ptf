exports.glyphs['dot'] =
	global: true
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			optical: if typeof parentAnchors[0].optical != 'undefined' then ( parentAnchors[0].optical / 54 ) * thickness else thickness
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
