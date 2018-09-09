/// @description move me bb

var dt = GetDT()

// Movement stuff comes here

var xMove = 0.0
var yMove = 0.0

// Input check
if( keyboard_check( ord( "W" ) ) ) jumping = true
// if( keyboard_check( ord( "S" ) ) ) ++yMove
if( keyboard_check( ord( "A" ) ) ) --xMove
if( keyboard_check( ord( "D" ) ) ) ++xMove

// If not moving you will not look away :)
if( xMove > 0.0 ) image_xscale = 1.0
else if( xMove < 0.0 ) image_xscale = -1.0

// Use these for all movement, then apply to x and y
xMove = xMove * moveSpeed * dt
yMove = yMove * moveSpeed * dt

if( jumping ) yMove -= jumpPower * dt

grav += gravAcc * dt
yMove += grav * dt
if( yMove > maxFallSpeed ) yMove = maxFallSpeed

// These guys tell -1 to 1 which direction you go in
var xDir = ( ( xMove != 0.0 ) ? xMove / abs( xMove ) : 0.0 )
var yDir = ( ( yMove != 0.0 ) ? yMove / abs( yMove ) : 0.0 )

// if( place_free( x + xMove,y ) ) x += xMove
if( tilemap_get_at_pixel( tileLayer,x + ( halfWidth * xDir ) + xMove,y ) <= 0 ) x += xMove
// if( place_free( x,y + yMove ) ) y += yMove
if( tilemap_get_at_pixel( tileLayer,x,y + ( halfHeight * yDir ) + yMove ) <= 0 ) y += yMove
else
{
	// Smaller means more accurate and also more laggy.
	var minMoveAmount = 0.1 * yDir
	// while( place_free( x,y + minMoveAmount ) ) y += minMoveAmount
	while( tilemap_get_at_pixel( tileLayer,x,y + ( halfHeight * yDir ) + minMoveAmount ) <= 0 ) y += minMoveAmount
	
	grav = 0.0
	jumping = false
}

// Attacking stuff here

shotTimer += dt

if( keyboard_check( ord( "J" ) ) && ( shotTimer >= refireTime ) )
{
	shotTimer = 0.0
	
	var bull = instance_create_layer( x,y,"ProjectilesLayer",Bullet )
	bull.dir = image_xscale
	bull.image_xscale = image_xscale
	
	audio_play_sound( Ouch1Sound,1,false )
}

// TODO: Make camera move sexily in code :)
