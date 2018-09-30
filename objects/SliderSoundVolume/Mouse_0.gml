/// @description move towards mouse

y = clamp( mouse_y,minY,maxY )

global.SOUND_VOL = clamp( 1 - ( y - minY ) / ( maxY - minY ),minGameSpeed,maxGameSpeed )