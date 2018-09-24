/// @description bounce off walls and blow up lightning walls

var dt = GetDT()

var xMove = xVel * dt
var yMove = yVel * dt

var xDir = ( ( xMove != 0.0 ) ? xMove / abs( xMove ) : 0.0 )
var yDir = ( ( yMove != 0.0 ) ? yMove / abs( yMove ) : 0.0 )

if( tilemap_get_at_pixel( tileLayer,x + halfWidth * xDir + xMove,y ) <= 0 ) x += xMove
else
{
	xVel *= -1
}
if( tilemap_get_at_pixel( tileLayer,x,y + halfHeight * yDir + yMove ) <= 0 ) y += yMove
else
{
	yVel *= -1
}

rotTimer += dt
if( rotTimer > timeToRotate )
{
	rotTimer = 0.0
	image_angle += 90
	if( image_angle > 360 ) image_angle = 0
}