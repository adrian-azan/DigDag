/// @description Insert description here


var mX = device_mouse_x_to_gui(0)
var mY = device_mouse_y_to_gui(0)
var currentColor = color
hover = false

if (mX> left and mX < right
	and mY > top and mY < bottom )
	{
		currentColor = color_selected
		hover = true
	}



draw_set_color(currentColor)
draw_button(left+2, top+2, right-2, bottom-2,true)
draw_rectangle(left,top,right,bottom,!fill)

if text != noone
{
	draw_set_color(color_text)
	draw_text(left+5,top+5,text)
}