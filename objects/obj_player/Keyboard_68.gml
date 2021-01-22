/// @description Move Player right

self.xVelocity = accelerate(self.xVelocity, self.xAcceleration,self.xVelocityMax)
self.facing = 1

if (image_xscale < 0)
{
	image_xscale *= -1;
	self.drill.image_xscale *= -1;
}

