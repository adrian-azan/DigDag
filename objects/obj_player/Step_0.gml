/// @description 


//Starting point for current speed
//self.yVelocity = accelerate(self.yVelocity, self.yAcceleration, self.yVelocityMax)

var playerEdge = abs(self.sprite_width/2)
//Checks if hitting ceiling
if position_meeting(x+playerEdge,(y-2)-sprite_height/2,obj_tileParent) == true or
	position_meeting(x-playerEdge,(y-2)-sprite_height/2,obj_tileParent) == true
	{
		jump = false
		show_debug_message("BONK")	
	}

//deccelerate to the sky!
if jump == true
{
	yVelocity = deccelerate(yVelocity, yAcceleration, -yVelocityMax)	
}

//Accelerate towards the ground
else if jump == false
{
	yVelocity = accelerate(yVelocity, yAcceleration, yVelocityMax)
}

//Checks if hitting floor
if position_meeting(x,y+2+sprite_height/2,obj_tileParent) == true and jump == false
{
	yVelocity = 0
	canJump = true
}
else
	canJump = false

y += yVelocity
self.drill.y = y

//Rotates Drill towards mouse
var drillAngle = point_direction(drill.x,drill.y,mouse_x,mouse_y)
if drill.image_xscale < 0
{
	drillAngle += 180;
	drillAngle %= 360
}

//Prevents drill from pointing backwards
if drillAngle > 90 and drillAngle < 180
	drillAngle = 90

else if drillAngle >180 and drillAngle < 270
	drillAngle = 270
	

drill.image_angle = drillAngle