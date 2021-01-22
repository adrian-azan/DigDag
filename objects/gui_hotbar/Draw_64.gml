/// @description Insert description here

draw_set_color(c_white)
for (var i = 0; i < 5; i++)
{
	if (i == selected)
	{
		draw_set_color(c_yellow)
		draw_rectangle(10+(i*50),10,5+((i+1)*50),60,true)
		draw_set_color(c_white)
	}
	
	else
		draw_rectangle(10+(i*50),10,10+((i+1)*50),60,true)
}