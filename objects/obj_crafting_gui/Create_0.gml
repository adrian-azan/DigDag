/// @description Insert description here
var recipesJson = loadRecipes()
recipeObjects = ds_map_create()

var test = 0
for (var c = ds_map_find_first(recipesJson);
	!is_undefined(c); c = ds_map_find_next(recipesJson,c))
{	
	var inner = recipesJson[? c]
	recipeObjects[? c] = ds_list_create()
	for(var v = ds_map_find_first(inner);
		!is_undefined(inner[? v]); v = ds_map_find_next(inner, v))
		{
			if (jsonCheck(inner[? v]) == true)
			{
				var obj = asset_get_index(v)
				instance_create_depth(0,0,-1000,obj)
				
				obj.name = inner[? v][? "name"]
				obj.level = inner[? v][? "level"]
				obj.description = inner[? v][? "description"]
				obj.cost = inner[? v][? "cost"]
				obj.yield = inner[? v][? "yield"]
				
				ds_list_add(recipeObjects[? c],obj)
				show_debug_message("DONE")
			}
			else
				show_debug_message(c + "BROKE")
	}	
	
}









openInventory = false

categoryButtons = ds_list_create()

selected = noone;

var drawX = view_xport[0];
var drawY = view_hport[0]/2;
var buffer = 3
categories[0] = "Mining"
categories[1] = "Fighting"
categories[2] = "Smelting"
categories[3] = "Magic"
categories[4] = "Rogue"



crafting = ds_map_create()
ds_map_add(crafting,"Mining", ds_list_create())
ds_map_add(crafting,"Fighting", ds_list_create())
ds_map_add(crafting,"Smelting", ds_list_create())
ds_map_add(crafting,"Magic", ds_list_create())
ds_map_add(crafting,"Rogue", ds_list_create())



for (var i = 1; i <= 5; i++)
	{	
		categoryButtons[i-1] = button(drawX+50,drawY+(50*i),30,100,categories[i-1],obj_button_category)
	}
	
var miningRecipes = recipeObjects[? "Mining"]
for (var k = 0; k < ds_list_size(miningRecipes);k++)
{
	show_debug_message(k)
	var newButton = button(drawX+200 + (50*k),drawY+ 50,30,30,"",obj_button_recipe)
	newButton.instance = miningRecipes[| k]
	ds_list_add(crafting[? "Mining"],newButton)
	
}
	
	
