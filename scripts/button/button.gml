// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function button(l,t,height,width,text,type) constructor{
		
	var button_id = instance_create_depth(l,t,-1000,type)
	button_id.top = t
	button_id.left = l
	button_id.bottom = button_id.top + height	
	button_id.right = button_id.left + width
	
	button_id.h = height;
	button_id.w = width
	
	button_id.text = text
	button_id.visible = false
	return button_id
	
}