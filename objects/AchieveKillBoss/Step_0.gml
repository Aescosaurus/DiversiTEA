/// @description follow player

var heightAdd = 45

if( !global.ACHIEVED_KILL_BOSS )
{
	global.ACHIEVED_KILL_BOSS = true
	x = player.x
	y = player.y - heightAdd
}

despawnTimer += GetDT()
if( despawnTimer > activeTime ) instance_destroy( id,false )