/// @description init vars

hp = GetHPBasedOnDifficulty( 2,4,6 )
flashDuration = 0.13 * 60.0
flashTimer = 0.0
halfHeight = sprite_get_height( sprite_index ) / 2.0
tileLayer = layer_tilemap_get_id( "TileLayer" )