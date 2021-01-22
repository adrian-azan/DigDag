/// @description Moving Player

var playerEdge = abs(self.sprite_width/2)

if position_meeting(x+(playerEdge+2)*facing,y,obj_tileParent)
	self.xVelocity = 0



self.x += self.xVelocity * self.facing
self.drill.x = x+(.4*self.sprite_width)


if (self.xVelocity != 0 and
	keyboard_check(vk_left) == false and
	keyboard_check(vk_right) == false and
	keyboard_check(ord("A")) == false and
	keyboard_check(ord("D")) == false)
		self.xVelocity = deccelerate(self.xVelocity, self.xAcceleration, 0)
	
	