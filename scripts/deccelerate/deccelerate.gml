// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deccelerate(velocity,decceleration, limit)
{
	//Checks if velocity is in range of limit
	if (velocity < limit+.02 and velocity > limit-.02)
		return limit
	
	//decelorate towards limit
	if (velocity > limit)
		return velocity - decceleration
	
	if (velocity < limit)
		return velocity + decceleration
	
	return velocity

}