/// @description start vars

player = instance_find( Player,0 )
myAngle = 0.0
rotSpeed = degtorad( 1.2 ) // rads
moveSpeed = 0.65
activated = false
var activationRange = 150.5
activationRangeSq = activationRange * activationRange
refireTime = 2.2 * 60.0
shotTimer = 0.0
alternateShots = false
hp = GetHPBasedOnDifficulty( 10,25,60 )
flashDuration = 0.13 * 60.0
flashTimer = 0.0
knockbackSpeed = 5.5