/// @description show message and allow to enter

if( tutMsg == 0 )
{
	tutMsg = instance_create_layer( other.x,other.y,"UILayer",ActivateTut )
}

tutMsg.x = other.x
tutMsg.y = other.y + yAdd

touchingPlayer = true

if( keyboard_check( ord( "K" ) ) )
{
	other.gravDir = "U"
	other.image_xscale = 1
	other.image_yscale = -1
	other.image_angle = 0
}