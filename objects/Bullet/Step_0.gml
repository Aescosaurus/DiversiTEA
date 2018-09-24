/// @description move based on dir

var dt = GetDT()

x += xMove * moveSpeed * dt
y += yMove * moveSpeed * dt

lifetimer -= dt
if( lifetimer <= 0.0 )
{
	instance_destroy( id,false )
}