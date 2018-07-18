exports.glyphs['eng_cap'] =
	unicode: 'Ŋ'
	glyphName: 'Ŋ'
	characterName: 'LATIN CAPITAL LETTER ENG'
	base: 'N_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: parentAnchors[2].x
			y: parentAnchors[2].y
	tags: [
    'all',
		'latin',
		'lowercase'
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
