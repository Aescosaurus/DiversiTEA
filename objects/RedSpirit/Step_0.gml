/// @description walk towards player

var dt = GetDT()

var player = instance_find( Player,0 )

if( GetLengthSq( x,y,player.x,player.y ) <= activationRangeSq ) activated = true

if( activated )
{
	var targetX = player.x
	var diff = targetX - x
	
	var xMove = ( diff / abs( diff ) ) * moveSpeed * dt
	var yMove = 0.0
	
	// disabled jumping for now :/
	// if( random_range( 0,1000 ) > 985 ) jumping = true;
	// 
	// if( jumping ) yMove -= jumpPower * dt
	
	grav += gravAcc * dt
	yMove += grav * dt
	
	var xDir = ( ( xMove != 0.0 ) ? xMove / abs( xMove ) : 0.0 )
	var yDir = ( ( yMove != 0.0 ) ? yMove / abs( yMove ) : 0.0 )
	image_xscale = ( ( xDir != 0.0 ) ? xDir : image_xscale )
	
	if( tilemap_get_at_pixel( tileLayer,x + ( halfWidth * xDir ) + xMove,y ) <= 0 ) x += xMove
	if( tilemap_get_at_pixel( tileLayer,x,y + ( halfHeight * yDir ) + yMove ) <= 0 ) y += yMove
	else
	{
		jumping = false
		grav = 0.0
	}
}

if( flashTimer <= flashDuration ) flashTimer += dt

// if( flashTimer >= flashDuration ) image_blend = c_white