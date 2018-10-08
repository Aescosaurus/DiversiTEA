/// @description fall if necessary

var yMove = 0.26 * GetDT()
if( tilemap_get_at_pixel( tileLayer,x,y + halfHeight + yMove ) <= 0 ) y += yMove