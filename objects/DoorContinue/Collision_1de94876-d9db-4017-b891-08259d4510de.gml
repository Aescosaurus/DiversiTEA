/// @description show message and allow to enter

// if( tutMsg == 0 )
// {
// 	tutMsg = instance_create_layer( other.x,other.y,"UILayer",ActivateTut )
// }
// 
// tutMsg.x = other.x
// tutMsg.y = other.y + yAdd
// 
// touchingPlayer = true

PlaySoundText( EnterDoorSound,EnterDoorSoundTextSpr,x,y - 16 )
room_goto_next()