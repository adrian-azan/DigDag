// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jsonCheck(map)
{	
	var keys = ["name", "level", "description", "cost", "yield"]
	for (var i = 0; i < array_length(keys); i++)
	{		
		if is_undefined(map[? keys[@ i]]) == true
		{
			show_debug_message(keys[@ i] + " not in map")
			return false;
		}
	}	
	
	return true;
}