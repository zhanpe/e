-- t={}
-- print(getmetatable(t))
-- local mt={x=3,y=5}
-- setmetatable(t,mt)
-- print(getmetatable(t).x)

-- local  t1={}
-- local  t2={}
-- local mt= {
-- 	__add=function (t1,t2)
-- 		print("add called")
-- 	end
-- }
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- local result=t1+t2;	

--如果两个table或者两个进行相加操作的值，具有不同元表，处理为
--1，如果第一个值有元表，就以这个元表为准
--2,否则，如果第2个值有元表，就用第2个值的元表
--3，如果两个值都没有元表，或者没有对应的元方法，那么就会报错


-- local t = {
-- 	name="ssss"
-- }
-- local t1={money=9000000}

-- local mt={
-- 	-- __index= function (table,key)
-- 	--  print(key.."search")
-- 	-- end
-- 	__index=t1
-- }
-- setmetatable(t,mt)
-- print(t.money)

-- local smartMan = {
-- 	name ="aaa",age =20,sayhello=function()
-- 		print("sayhello")
-- 	end
-- }
-- local t1={}
-- local t2={}
-- local  mt={
-- 	__index=smartMan,
-- 	--__newindex=function (t,k,v)
-- 	--print("dont fuzhi")end
-- 	__newindex=t2	
-- 	end
-- }
-- setmetatable(t1, mt)
-- t1.sayhello=function()("newhello")end
-- t1.sayhello();
-- t2.sayhello();	


-- local smartMan = {
-- 	name="none",
-- }
-- local t1 = {
-- 	hehe=123;
-- };
-- local mt = {
-- 	__index=smartMan,
-- 	__newindex=function (t,k,v)
-- 	print("别赋值! ")；
-- 	end
-- }
-- setmetatable(t1,mt);
-- print(rawget(t1, "name"));
-- print(rawget(t1, "hehe"));
-- rawset(t1, "name", "小偷")；
-- print(t1.name);


-- a=100
-- for i,v in pairs(_G) do
-- 	print(i,v)
-- end

-- local game = require("GameData")
-- game.play()

-- require("GameManager")
-- GameManager.setLevel(10)
-- print(GameManager.getLevel())
-- print(GameManager.level)

--定义一个函数
--1.
-- TSprite = {
-- 	x=0,
-- 	y=0,
-- }
-- function  TSprite.setPosition(self, x, y)
-- 	self.x = x;
-- 	self.y = y;
-- end
-- local who = TSprite;
-- TSprite = nil;
-- who.setPosition(who,1,2); 

-- --2.
-- TSprite = {
--      x = 0,
--      y = 0, 
--  }
-- function TSprite:setPosition(x, y)
--      self.x = x;
--      self.y = y;
-- end
-- local who = TSprite;
-- TSprite = nil;
-- who:setPosition(1, 2);


-- Hero = {attack=0}
--  function Hero:new(o)
--     o = o or {}
--     setmetatable(o,self)
--     self.__index = self
--     return o
--  end
--  function Hero:skill(addAttack)
--     self.attack = self.attack + addAttack
--  end
--  oneHero = Hero:new({attack=100})
--  oneHero:skill(10)
--  print(oneHero.attack)
--  print(Hero.attack)


local Table = {
	array={};
	number=0;
}
function Table:new ( num,x,y )
	local a = {}
	setmetatable(a,{__index=Table})
	a.number=num;
	a.array[1]=x;
	a.array[2]=y;
	return a;
end
function Table:trace(  )
	print(self.number.." "..self.array[1].." "..self.array[2])
end
local a = Table:new(255,30,8)
local b = Table:new(300,12,4)
a:trace();
b:trace();
print(Table.array[1])
print(Table.array[2])