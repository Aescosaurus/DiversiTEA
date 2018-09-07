/// @description move based on dir

var dt = GetDT()

x += dir * moveSpeed * dt

lifetimer -= dt
if( lifetimer <= 0.0 )
{
	instance_destroy( id,false )
}