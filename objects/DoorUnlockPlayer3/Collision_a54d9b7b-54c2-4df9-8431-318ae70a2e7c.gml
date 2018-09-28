/// @description show message and allow to enter

if( tutMsg == 0 )
{
	tutMsg = instance_create_layer( other.x,other.y,"UILayer",ActivateTut )
}

tutMsg.x = other.x
tutMsg.y = other.y + yAdd

touchingPlayer = true

if( keyboard_check( ord( "K" ) ) )
{
	audio_play_sound( EnterDoorSound,10,false )
	global.PLAYER_SPRITE = Player3Spr
	room_goto( HelpRoom )
}