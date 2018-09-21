/// @description init vars

// MAKE SURE YOU HAVE TO KILL THIS GUY BEFORE PROGRESSING

hp = GetHPBasedOnDifficulty( 1,3,5 )
flashDuration = 0.13 * 60.0
flashTimer = 0.0
halfHeight = sprite_get_height( sprite_index ) / 2.0
tileLayer = layer_tilemap_get_id( "TileLayer" )
knockbackSpeed = 5.5