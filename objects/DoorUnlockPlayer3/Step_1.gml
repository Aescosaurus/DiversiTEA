/// @description move tut msg away pls ty

if( !touchingPlayer && tutMsg != 0 )
{
	instance_destroy( tutMsg.id,false )
	tutMsg = 0
}

touchingPlayer = false