/// @description Open inventory

openInventory = !openInventory

for (var i = 0; i < 5; i++)
{
	categoryButtons[i].visible = !categoryButtons[i].visible
}

if (selected != noone)
{
	for (var i = 0; i < ds_list_size(selected); i++)
	{
		selected[|i].visible = false;	
		selected[|i].instance.visible = false;
	}
	
	selected = noone;
	
}


