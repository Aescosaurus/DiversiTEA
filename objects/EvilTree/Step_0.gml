/// @description flash a color

var dt = GetDT()

var yMove = 0.26 * dt
if( tilemap_get_at_pixel( tileLayer,x,y + halfHeight + yMove ) <= 0 ) y += yMove

if( flashTimer <= flashDuration ) flashTimer += dt

// if( flashTimer >= flashDuration ) image_blend = c_white