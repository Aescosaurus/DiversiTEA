/// @description get pushed around by player

var dt = GetDT()

grav += gravAcc * dt
var yMove = grav * dt
if( tilemap_get_at_pixel( tileLayer,x,y + halfHeight + yMove ) <= 0 )
{
	y += yMove
}
else grav = 0.0

if( tilemap_get_at_pixel( tileLayer,x + halfWidth * ( xVel / abs( xVel ) ),y ) <= 0 )
{
	x += xVel * dt
}

xVel *= decay * dt