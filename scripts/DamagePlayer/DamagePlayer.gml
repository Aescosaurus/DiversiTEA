var player = instance_find( Player,0 )

// room_goto( room )

if( global.GAME_DIFFICULTY != "E" ) --player.hp

if( player.hp < 1 )
{
	room_goto( room )
}