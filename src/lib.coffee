exports.lib =
	parameters:
		# xHeight: xHeight + ( 20 / 142 ) * thickness - 20
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( capDelta / 3 ) * smallCapDelta #TODO
		scThickness: thickness * _scThickness
		scWidth: width * _scWidth
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		minThickness: Math.max( 40, Math.min( 100, thickness )) #TODO
		minSpace: thickness / 2
		correctWidthAperture: Math.max(0, 180 - 180 * width) #TODO
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround #TODO
		serifHeight: Math.min( xHeight / 3, Math.max( serifHeight * thickness * ( 3 / 4 ), 5 ) )
		# spacing: Math.min( spacing, spacing / serifWidth )
