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

xMove = xMove * moveSpeed * dt
yMove = yMove * moveSpeed * dt

if( jumping ) y -= jumpPower * dt

grav += gravAcc * dt
yMove += grav * dt
if( yMove > maxFallSpeed ) yMove = maxFallSpeed

if( place_free( x + xMove,y ) ) x += xMove
if( place_free( x,y + yMove ) ) y += yMove
else
{
	// Smaller means more accurate and also more laggy.
	var minMoveAmount = 0.1
	while( place_free( x,y + minMoveAmount ) ) y += minMoveAmount
	
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
}

// TODO: Make camera move sexily in code :)
