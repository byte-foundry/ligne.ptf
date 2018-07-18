exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( capDelta / 3 ) * smallCapDelta #TODO
		scThickness: thickness * _scThickness
		scWidth: width * _scWidth
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		minThickness: Math.max( 40, Math.min( 100, thickness )) #TODO
		correctWidthAperture: Math.max(0, 180 - 180 * width) #TODO
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround #TODO
		serifHeight:
			if serifWidth < 0.1 && serifHeight < 0.1
			then Math.max(5, serifHeight)
			else serifHeight
