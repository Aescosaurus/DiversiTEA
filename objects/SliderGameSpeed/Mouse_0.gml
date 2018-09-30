/// @description move towards mouse

y = clamp( mouse_y,minY,maxY )

global.GAME_SPEED = clamp( 1 - ( y - minY ) / ( maxY - minY ),minGameSpeed,maxGameSpeed )