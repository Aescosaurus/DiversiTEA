/// @description draw with flashing

if( flashTimer < flashDuration ) shader_set( FlashWhiteShader )
else shader_reset()
draw_self()
shader_reset()