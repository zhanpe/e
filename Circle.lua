local Shape =require("Shape")
local Circle = class("Circle",Shape)
function Circle:ctor()
	--如果继承类覆盖了 ctor（）构造函数，那么必须手动调用父类
	--类名.super可以访问指定类的父类
	Circle.super.ctor(self,"Circle")
    self.radius = 100
end
function Circle:setRadius(radius)
	self.radius = radius
end
--覆盖父类的同名方法
function Circle:draw()
	printf("draw%s,radius =%0.2f",self.shapeName,self.radius)
end
return Circl