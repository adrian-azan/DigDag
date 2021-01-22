// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function accelerate(velocity,acceleration, limit)
{
	if (velocity < limit)
		return velocity + acceleration
	return velocity
}