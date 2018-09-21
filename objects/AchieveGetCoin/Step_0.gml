/// @description follow player

var heightAdd = 45

if( !global.ACHIEVED_GET_COIN )
{
	global.ACHIEVED_GET_COIN = true
	x = player.x
	y = player.y - heightAdd
}

despawnTimer += GetDT()
if( despawnTimer > activeTime ) instance_destroy( id,false )