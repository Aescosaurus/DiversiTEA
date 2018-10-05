var player = instance_find( Player,0 )

// room_goto( room )

if( global.GAME_DIFFICULTY != "E" ) --player.hp

if( !audio_is_playing( PlayerOuchSound ) )
{
	PlaySoundText( PlayerOuchSound,OuchSoundTextSpr,player.x,player.y - 8 )
}

if( player.hp < 1 )
{
	room_goto( room )
}