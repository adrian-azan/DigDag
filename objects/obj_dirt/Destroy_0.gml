/// @description Put Dirt in inventory





if (ds_map_exists(obj_player.inventory,"Dirt"))
{
	var amount = ds_map_find_value(obj_player.inventory,"Dirt")
	ds_map_set(obj_player.inventory,"Dirt",amount+1)
}



