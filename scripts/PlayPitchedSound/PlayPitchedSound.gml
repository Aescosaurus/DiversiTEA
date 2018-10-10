/// @param_x
/// @param_y
/// @param_sound

var player = instance_find( Player,0 )
var dist = sqrt( GetLengthSq( argument0,argument1,player.x,player.y ) )

if( dist < 250.0 )
{
	var pitch = ( 250.0 / 2.0 ) / dist
	pitch = clamp( pitch,0.2,2.0 )
	PlaySoundPitch( argument2,pitch )
}