local CC_DrawColorModify = {
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0.05,
	["$pp_colour_addb"] = 0.05,
	["$pp_colour_brightness"] = 0,
	["$pp_colour_colour"] = 1,
	["$pp_colour_contrast"] = 1.1,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0,
	--["$fbtexture"] = 0,
}

function CC_RenderScreenspaceEffects()

	DrawColorModify( CC_DrawColorModify )
	
	 -- Darken -- Multiply  -- Horizontal Blur/SizeX -- Vertical Blur/SizeY -- Passes -- Color Multiply -- Red -- Green -- Blue
	DrawBloom(0.45, 0.53, 9, 5, 1, 0, 1, 1, 1)

end

hook.Add("RenderScreenspaceEffects","CC_RenderScreenspaceEffects",CC_RenderScreenspaceEffects)


function CC_SetupWorldFog()

	render.FogMode( 1 )
	render.FogStart( 0 )
	render.FogEnd( 20000 )
	render.FogMaxDensity( 0.8 )
	render.FogColor( 255*0.6,255*0.7,255*0.8 )

	return true
	
end

hook.Add("SetupWorldFog","CC_SetupWorldFog",CC_SetupWorldFog)