/// @description destroy when touching ball

// TODO: Spawn particles or something.

other.xVel *= -1

PlaySoundText( ZapSound,ZapSoundTextSpr,x,y - 16 )

instance_destroy( id,false )