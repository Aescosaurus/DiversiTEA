// @description set init vars

gravAcc = 0.26
grav = 0.0
moveSpeed = 1.5
jumping = false
jumpPower = 3.5
halfWidth = sprite_get_width( sprite_index ) / 2.0
halfHeight = sprite_get_height( sprite_index ) / 2.0
tileLayer = layer_tilemap_get_id( "TileLayer" )
hp = 5
flashDuration = 0.13 * 60.0
flashTimer = 0.0
var activationRange = 130.0
activationRangeSq = activationRange * activationRange
activated = false