/// @description destroy when touching ball

// TODO: Spawn particles or something.

other.yVel *= -1

audio_play_sound( ZapSound,10,false )

instance_destroy( id,false )