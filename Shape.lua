require("Myclass")
local Shape = class("Shape")
-- ctor() 是类的构造函数l,在调用Shape.new（）创建Shape对
function Shape:ctor(shapeName)
	self.shapeName = shapeName
	print(self.shapeName)
    printf("Shape:ctor(%s)",self.shapeName)
end
function Shape:draw()
	printf("draw %s",self.shapeName)
end
--创建
local sh = Shape.new("AAAA")
sh:draw()
-- local Shape =require("Shape")
-- local Circle = class("Circle",Shape)
-- function Circle:ctor()
-- 	--如果继承类覆盖了 ctor（）构造函数，那么必须手动调用父类
-- 	--类名.super可以访问指定类的父类
-- 	Circle.super.ctor(self,"circle")
--     self.radius = 100
-- end
-- function Circle:setRadius(radius)
-- 	self.radius = radius
-- end
-- --覆盖父类的同名方法
-- function Circle:draw()
-- 	printf("draw%s,radius =%0.2f",self.shapeName,self.radius)
-- end
-- return Circle