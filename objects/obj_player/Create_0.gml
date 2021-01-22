/// @description Set Player Variables


inventory = ds_map_create()
ds_map_add(inventory,"Dirt",0)
ds_map_add(inventory,"Stone",0)
ds_map_add(inventory,"Copper",0)
ds_map_add(inventory,"Iron",0)
ds_map_add(inventory,"Copper",0)




xspdMAX = 2
yspdMAX = 2

xVelocityMax = 2
yVelocityMax = 2

facing = 0
falling = 0

xVelocity = 0
yVelocity = 0

xAcceleration = .4
yAcceleration = .4

jump_buffer_count = 0
jump_buffer = 10
jump = false
canJump = true
heightDegree = 0


drill = instance_find(obj_drill,0)//instance_create_depth(x+(.6*self.sprite_width), y, -1 ,obj_drill)
