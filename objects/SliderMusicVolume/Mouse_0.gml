/// @description move towards mouse

y = clamp( mouse_y,minY,maxY )

global.MUSIC_VOL = clamp( 1 - ( y - minY ) / ( maxY - minY ),minGameSpeed,maxGameSpeed )

audio_sound_gain( bgMusic,global.MUSIC_VOL,0.0 )
// Any other bg music you add change the volume here pls.