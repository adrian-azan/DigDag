/// @description Put Iron in inventory

if (ds_map_exists(obj_player.inventory,"Iron"))
{
	var amount = ds_map_find_value(obj_player.inventory,"Iron")
	ds_map_set(obj_player.inventory,"Iron",amount+1)
}
