/// @description Insert description here

// Inherit the parent event
event_inherited();

if (hover == true and
	mouse_check_button_pressed(mb_left) == true)
	{
		obj_crafting_gui.selected = ds_map_find_value(obj_crafting_gui.crafting,text)
		select(obj_crafting_gui.selected)		
	}