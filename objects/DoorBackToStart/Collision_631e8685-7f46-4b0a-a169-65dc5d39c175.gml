/// @description show message and allow to enter

if( !playedSound )
{
	audio_sound_gain( BackVoiceSound,global.SOUND_VOL,0.0 )
	audio_play_sound( BackVoiceSound,10,false )
	playedSound = true
}

if( tutMsg == 0 )
{
	tutMsg = instance_create_layer( other.x,other.y,"UILayer",ActivateTut )
}

tutMsg.x = other.x
tutMsg.y = other.y + yAdd

touchingPlayer = true

if( keyboard_check( ord( "O" ) ) || keyboard_check( ord( "E" ) ) )
{
	PlaySoundText( EnterDoorSound,EnterDoorSoundTextSpr,x,y - 16 )
	room_goto( TitleScreen )
}