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
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: Math.PI
					type: 'smooth'
				1:
					x: contours[0].nodes[0].x - ( 173 / defaultThickness ) * thickness / 2
					y: anchors[0].y + ( 173 / defaultThickness ) * thickness / 2
					dirOut: Math.PI / 2
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + ( 173 / defaultThickness ) * thickness
					dirOut: 0
					type: 'smooth'
				3:
					x: contours[0].nodes[0].x + ( 173 / defaultThickness ) * thickness / 2
					y: contours[0].nodes[1].y
					dirOut: - Math.PI / 2
					type: 'smooth'
