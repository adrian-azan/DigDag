/// @description Insert description here

if (ds_map_exists(obj_player.inventory,"Ladder"))
{
	var amount = ds_map_find_value(obj_player.inventory,"Ladder")
	ds_map_set(obj_player.inventory,"Ladder",amount+1)
}

else
{
	ds_map_set(obj_player.inventory,"Ladder",1)
}
