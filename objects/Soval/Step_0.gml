/// @description Move towards player(kinda)

if( activated )
{
	var dt = GetDT()
	
	var xDiff = player.x - x
	var yDiff = -( player.y - y )
	
	var len = sqrt( xDiff * xDiff + yDiff * yDiff )
	
	x += ( xDiff / len ) * moveSpeed * dt
	y -= ( yDiff / len ) * moveSpeed * dt
	
	// var angle = arctan2( xDiff,yDiff ) - pi / 2.0
	// 
	// if( myAngle > angle ) myAngle -= rotSpeed * dt
	// else if( myAngle < angle ) myAngle += rotSpeed * dt
	// 
	// // if( keyboard_check( ord( "E" ) ) )
	// {
	// 	x += cos( myAngle ) * moveSpeed * dt
	// 	y += sin( myAngle ) * moveSpeed * dt
	// }
	
	shotTimer += dt
	if( shotTimer > refireTime )
	{
		shotTimer = 0.0
		
		PlaySoundText( WhooshSound,WhooshSoundTextSpr,x,y - 32 )
		
		if( !alternateShots )
		{
			alternateShots = true
			
			var fball1 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball1.xVel = 0.0
			fball1.yVel = -1.0
			var fball2 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball2.xVel = 0.0
			fball2.yVel = 1.0
			var fball3 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball3.xVel = -1.0
			fball3.yVel = 0.0
			var fball4 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball4.xVel = 1.0
			fball4.yVel = 0.0
		}
		else
		{
			alternateShots = false
			
			var fball1 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball1.xVel = 0.5
			fball1.yVel = 0.5
			var fball2 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball2.xVel = -0.5
			fball2.yVel = 0.5
			var fball3 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball3.xVel = 0.5
			fball3.yVel = -0.5
			var fball4 = instance_create_layer( x,y,"ProjectilesLayer",Fireball )
			fball4.xVel = -0.5
			fball4.yVel = -0.5
		}
	}
	
	if( flashTimer <= flashDuration ) flashTimer += dt
}
else if( GetLengthSq( x,y,player.x,player.y ) <= activationRangeSq )
{
	activated = true
}