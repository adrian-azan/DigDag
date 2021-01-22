// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadRecipes(){
	
	var test = buffer_load("recipes.json")
	
	var content = buffer_read(test, buffer_string)
	
	buffer_delete(test)
	
	var json = json_decode(content)
	
	return json
}