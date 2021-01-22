/// @description Highlighted selected block


if targetBlock != noone
{
	width = targetBlock.sprite_width;
	height = targetBlock.sprite_height;
	
	draw_set_color(c_yellow)
	draw_rectangle(targetBlock.x, targetBlock.y,
					targetBlock.x + width, targetBlock.y + height,true)
}