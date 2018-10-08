/// @description move tut msg away pls ty

if( !place_meeting( x,y,Player ) ) playedSound = false

if( !touchingPlayer && tutMsg != 0 )
{
	instance_destroy( tutMsg.id,false )
	tutMsg = 0
}

touchingPlayer = false