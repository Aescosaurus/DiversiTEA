/// @description show message and allow to enter

if( tutMsg == 0 )
{
	tutMsg = instance_create_layer( other.x,other.y,"UILayer",ActivateTut )
}

tutMsg.x = other.x
tutMsg.y = other.y + yAdd

touchingPlayer = true

if( keyboard_check( ord( "O" ) ) )
{
	other.gravDir = "D"
	other.grav = 0.0
	other.image_xscale = 1
	other.image_yscale = 1
	other.image_angle = 0
	
	var ball = instance_find( LightningBall,0 )
	if( ball != noone )
	{
		ball.xVel = 0.0
		ball.yVel = 1.0 * ball.moveSpeed
	}
}