/// @description Insert description here
// You can write your code in this editor

if visible == true and position_meeting(mouse_x,mouse_y,other)
{
	targetBlock = other;
	alarm_set(1,3)
	
	if targetBlock.hp <= 0
	{
		instance_destroy(targetBlock)	
	}
	
	
	targetBlock.hp -= drillPower
	//coolDown = true
	//alarm_set(0, coolDownTime)
	show_debug_message(targetBlock.hp)
	
}

