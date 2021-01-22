// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function select(recipes){
	
	if (ds_list_is_list(recipes,ds_type_list) == true)
	{
		show_debug_message("Not a list")
	}	
	
	for (var i = 0; i < ds_list_size(recipes); i++)
	{		
		recipes[|i].visible = !recipes[|i].visible;		
		recipes[|i].instance.visible = !recipes[|i].instance.visible
	}

}