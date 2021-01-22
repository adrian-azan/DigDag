/// @description Pull Out Drill

obj_player.drill.visible = true;


var width = obj_player.drill.sprite_width

//Checks that drill is in range of a selected block 

if distance_to_object(obj_player.drill) <= abs(width+(width/4))
	and targetBlock != noone
{	
	if targetBlock.hp <= 0
	{
		instance_destroy(targetBlock)	
	}	
	
	targetBlock.hp -= obj_player.drill.drillPower
	
}