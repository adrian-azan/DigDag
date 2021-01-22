/// @description Put copper in inventory

if (ds_map_exists(obj_player.inventory,"Copper"))
{
	var amount = ds_map_find_value(obj_player.inventory,"Copper")
	ds_map_set(obj_player.inventory,"Copper",amount+1)
}