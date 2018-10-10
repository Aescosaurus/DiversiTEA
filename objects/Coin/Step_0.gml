/// @description play bling sound

if( !audio_is_playing( BlingSound ) )
{
	audio_sound_pitch( BlingSound,1.0 )
	PlayPitchedSound( x,y,BlingSound )
}