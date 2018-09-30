/// @description destroy self and bullet

var diff = x - other.x
x += ( diff / abs( diff ) ) * knockbackSpeed

PlaySoundText( SplooshSound,SplooshSoundTextSpr,x,y - 16 )

instance_destroy( other,false )

--hp
// image_blend = c_red
flashTimer = 0.0
if( hp < 1 )
{
	TryGivingAchievement( AchieveKillBoss )
	instance_create_layer( x,y,"MainLayer",DoorForward )
	for( var i = 0; i < instance_number( Fireball ); ++i )
	{
		instance_destroy( instance_find( Fireball,i ).id,false )
	}
	instance_destroy( id,false )
}