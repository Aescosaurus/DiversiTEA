/// @description flash a color

var dt = GetDT()

var yMove = 0.26 * dt
if( tilemap_get_at_pixel( tileLayer,x,y + halfHeight + yMove ) <= 0 ) y += yMove

if( flashTimer <= flashDuration ) flashTimer += dt

// if( flashTimer >= flashDuration ) image_blend = c_white

if( !audio_is_playing( BuzzSound ) )
{
	audio_sound_pitch( BuzzSound,1.0 )
	PlayPitchedSound( x,y,BuzzSound )
}