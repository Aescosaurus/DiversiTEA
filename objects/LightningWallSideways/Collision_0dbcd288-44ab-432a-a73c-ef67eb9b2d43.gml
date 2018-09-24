/// @description make player bounce off

if( other.y > y )
{
	other.y += other.moveSpeed
	other.grav = 0.0
}
if( other.y < y )
{
	other.y -= other.moveSpeed
	other.grav = 0.0
}