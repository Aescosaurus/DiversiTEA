/// @description update stuff

deathTimer -= GetDT()

// TODO: Maybe fade out or something?

if( deathTimer < 0.0 ) instance_destroy( id,false )