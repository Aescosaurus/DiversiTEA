/// @description make vars exist

moveSpeed = 3.13
xVel = -1.0 * moveSpeed
yVel = 0.0
halfWidth = sprite_get_width( sprite_index ) / 2.0
halfHeight = sprite_get_height( sprite_index ) / 2.0
tileLayer = layer_tilemap_get_id( "TileLayer" )
timeToRotate = 0.4 * 60.0
rotTimer = 0.0