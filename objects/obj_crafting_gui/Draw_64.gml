/// @description Insert description here

var drawX = view_xport[0];
var drawY = view_yport[0];

if (openInventory == true)
{
	var inventory = obj_player.inventory

draw_set_color(c_white)
draw_text(drawX,drawY+50,"Dirt: "+ string(ds_map_find_value(inventory,"Dirt")))
draw_text(drawX,drawY+70,"Copper: "+string(ds_map_find_value(inventory,"Copper")))
draw_text(drawX,drawY+90,"Iron: "+string(ds_map_find_value(inventory,"Iron")))
draw_text(drawX,drawY+110,"Stone: "+string(ds_map_find_value(inventory,"Stone")))
draw_text(drawX,drawY+130,"Gold: "+string(ds_map_find_value(inventory,"Gold")))
	
}