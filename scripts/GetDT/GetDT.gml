var testTime = delta_time / 30000.0

testTime *= global.GAME_SPEED

if( testTime > 5.0 ) testTime = 0.0

return( testTime )