/// @description Climb


if place_meeting(x,y,obj_ladder) == true
{
	y -= obj_ladder.climbSpeed
	
	show_debug_message("climbing " + string(yVelocityMax))
}
