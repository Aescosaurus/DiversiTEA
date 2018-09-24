/// @description make player bounce off

if( other.x > x )
{
	other.x += other.moveSpeed
	other.grav = 0.0
}
if( other.x < x )
{
	other.x -= other.moveSpeed
	other.grav = 0.0
}