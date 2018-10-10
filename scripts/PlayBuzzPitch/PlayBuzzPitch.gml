/// @param_x
/// @param_y

var player = instance_find( Player,0 )
var dist = sqrt( GetLengthSq( x,y,player.x,player.y ) )

show_debug_message( dist )