/// @description move me bb

var dt = GetDT()

// Movement stuff comes here

var xMove = 0.0
var yMove = 0.0

switch( gravDir )
{
case "U":
	if( keyboard_check( ord( "S" ) ) || keyboard_check( vk_down ) ) jumping = true
	if( keyboard_check( ord( "A" ) ) || keyboard_check( vk_left ) ) --xMove
	if( keyboard_check( ord( "D" ) ) || keyboard_check( vk_right ) ) ++xMove
	break
case "D": // normal gravity
	if( keyboard_check( ord( "W" ) ) || keyboard_check( vk_up ) ) jumping = true
	if( keyboard_check( ord( "A" ) ) || keyboard_check( vk_left ) ) --xMove
	if( keyboard_check( ord( "D" ) ) || keyboard_check( vk_right ) ) ++xMove
	break
case "L":
	if( keyboard_check( ord( "D" ) ) || keyboard_check( vk_right ) ) jumping = true
	if( keyboard_check( ord( "W" ) ) || keyboard_check( vk_up ) ) --yMove
	if( keyboard_check( ord( "S" ) || keyboard_check( vk_down ) ) ) ++yMove
	break
case "R":
	if( keyboard_check( ord( "A" ) ) || keyboard_check( vk_left ) ) jumping = true
	if( keyboard_check( ord( "S" ) ) || keyboard_check( vk_down ) ) ++yMove
	if( keyboard_check( ord( "W" ) ) || keyboard_check( vk_up ) ) --yMove
	break
default: show_debug_message( "You will never get this!" ) break
}

// If not moving you will not look away :)
if( gravDir == "U" || gravDir == "D" )
{
	if( xMove > 0.0 ) image_xscale = 1.0
	else if( xMove < 0.0 ) image_xscale = -1.0
}
else if( gravDir == "L" )
{
	if( yMove > 0.0 ) image_xscale = 1.0
	else if( yMove < 0.0 ) image_xscale = -1.0
}
else if( gravDir == "R" )
{
	if( yMove > 0.0 ) image_xscale = -1.0
	else if( yMove < 0.0 ) image_xscale = 1.0
}

// Use these for all movement, then apply to x and y
xMove = xMove * moveSpeed * dt
yMove = yMove * moveSpeed * dt

if( jumping )
{
	landed = false
	// if( gravDir == "D" ) yMove += jumpPower * dt
	// else yMove -= jumpPower * dt
	switch( gravDir )
	{
	case "U": yMove += jumpPower * dt; break
	case "D": yMove -= jumpPower * dt; break
	case "L": xMove += jumpPower * dt; break
	case "R": xMove -= jumpPower * dt; break
	}
}

grav += gravAcc * dt
// if( gravDir == "D" ) yMove += grav * dt
// else yMove -= grav * dt
switch( gravDir )
{
case "U": yMove -= grav * dt; break
case "D": yMove += grav * dt; break
case "L": xMove -= grav * dt; break
case "R": xMove += grav * dt; break
}
// if( yMove > maxFallSpeed ) yMove = maxFallSpeed

// These guys tell -1 to 1 which direction you go in
var xDir = ( ( xMove != 0.0 ) ? xMove / abs( xMove ) : 0.0 )
var yDir = ( ( yMove != 0.0 ) ? yMove / abs( yMove ) : 0.0 )

if( tilemap_get_at_pixel( tileLayer,x + ( halfWidth * xDir ) + xMove,y ) <= 0 ) x += xMove
else if( gravDir == "L" || gravDir == "R" )
{
	// Smaller means more accurate and also more laggy.
	var minMoveAmount = 0.1 * xDir
	while( tilemap_get_at_pixel( tileLayer,x + ( halfWidth * xDir ) + minMoveAmount,y ) <= 0 ) x += minMoveAmount
	
	grav = 0.0
	jumping = false
	
	if( !audio_is_playing( LandSound ) && !landed )
	{
		PlaySoundText( LandSound,LandSoundTextSpr,x,y + textOffset )
		landed = true
	}
}
else
{
	if( !audio_is_playing( HitWallSound ) ) PlaySoundText( HitWallSound,HitWallSoundTextSpr,x,y - textOffset )
}
if( tilemap_get_at_pixel( tileLayer,x,y + ( halfHeight * yDir ) + yMove ) <= 0 ) y += yMove
else if( gravDir == "D" || gravDir == "U" )
{
	// Smaller means more accurate and also more laggy.
	var minMoveAmount = 0.1 * yDir
	while( tilemap_get_at_pixel( tileLayer,x,y + ( halfHeight * yDir ) + minMoveAmount ) <= 0 ) y += minMoveAmount
	
	grav = 0.0
	jumping = false
	
	if( !audio_is_playing( LandSound ) && !landed )
	{
		PlaySoundText( LandSound,LandSoundTextSpr,x,y + textOffset )
		landed = true
	}
}
else
{
	if( !audio_is_playing( HitWallSound ) ) PlaySoundText( HitWallSound,HitWallSoundTextSpr,x,y - textOffset )
}

// Attacking stuff here

shotTimer += dt

if( ( keyboard_check( ord( "J" ) ) || keyboard_check( ord( "Q" ) ) ) && ( shotTimer >= refireTime ) )
{
	shotTimer = 0.0
	
	var bull = instance_create_layer( x,y,"ProjectilesLayer",Bullet )
	// bull.dir = image_xscale
	// bull.image_xscale = image_xscale
	switch( gravDir )
	{
	case "U": case "D":
		bull.xMove = image_xscale
		bull.image_xscale = image_xscale
		break
	case "L":
		bull.yMove = image_xscale
		bull.image_angle = -90 * image_xscale
		break
	case "R":
		bull.yMove = -image_xscale
		bull.image_angle = 90 * image_xscale
		break
	}
	
	// audio_play_sound( SlashSound,1,false )
	PlaySoundText( SlashSound,SlashSoundTextSpr,x + textOffset * image_xscale,y - textOffset * 1.5 )
}

// Play error sound and give error message if key that isnt mapped is pressed
if( keyboard_check( vk_anykey ) )
{
	if( !keyboard_check( ord( "W" ) ) &&
		!keyboard_check( ord( "S" ) ) &&
		!keyboard_check( ord( "A" ) ) &&
		!keyboard_check( ord( "D" ) ) &&
		!keyboard_check( ord( "J" ) ) &&
		!keyboard_check( ord( "K" ) ) &&
		!keyboard_check( ord( "Q" ) ) &&
		!keyboard_check( ord( "E" ) ) &&
		!keyboard_check( vk_up ) &&
		!keyboard_check( vk_down ) &&
		!keyboard_check( vk_left ) &&
		!keyboard_check( vk_right ) )
	{
		// TODO: Put error sound and message in here
		// PlaySoundText( ... )
	}
}

// Window stuff, I'm not sure where else to put this so here is fine I guess.
if( keyboard_check( vk_control ) && keyboard_check( ord( "F" ) ) )
{
	window_set_fullscreen( true )
}
else if( keyboard_check( vk_escape ) )
{
	window_set_fullscreen( false )
}

// TODO: Make camera move sexily in code :)