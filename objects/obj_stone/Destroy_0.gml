/// @description Put Stone in inventory

if (ds_map_exists(obj_player.inventory,"Stone"))
{
	var amount = ds_map_find_value(obj_player.inventory,"Stone")
	ds_map_set(obj_player.inventory,"Stone",amount+1)
}
