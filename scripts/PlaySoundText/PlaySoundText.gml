/// @param_soundName
/// @param_textSpr
/// @param_textX
/// @param_textY

var text = instance_create_layer( argument2,argument3,"UILayer",AudioObject )
text.x = argument2
text.y = argument3
text.sprite_index = argument1

PlaySound( argument0 )