/// @param_soundName
/// @param_textSpr
/// @param_textX
/// @param_textY

var text = instance_create_layer( argument2,argument3,"UILayer",AudioObject )
text.x = argument2
text.y = argument3
text.sprite_index = argument1

show_debug_message( global.SOUND_VOL )
audio_sound_gain( argument0,global.SOUND_VOL,0.0 )
audio_play_sound( argument0,10,false )