/// @description move based on vel

var dt = GetDT()

x += xVel * moveSpeed * dt
y += yVel * moveSpeed * dt

lifeTimer -= dt
if( lifeTimer < 0.0 ) instance_destroy( id,false )