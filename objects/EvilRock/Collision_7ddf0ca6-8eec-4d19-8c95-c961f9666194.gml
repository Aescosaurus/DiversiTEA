/// @description destroy self and bullet

var diff = x - other.x
x += ( diff / abs( diff ) ) * knockbackSpeed

instance_destroy( other,false )

--hp
// image_blend = c_red
flashTimer = 0.0
if( hp < 1 ) instance_destroy( id,false )