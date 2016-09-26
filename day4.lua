function search(classes, key)
    for i = 1, #classes do
        local value = classes[i][key];
        if value ~= nil then
            return value;
        end
    end 
end
local t1 = {name = "hehe"};
local t2 = {game = "who"};
print(search({t1, t2}, "game"));


function createClass(...)
	local parents = {...};
	local child = {};
	-- 设置类的元表
    setmetatable(child,{__index = function(table,key)
             return search(parents,key);
  end
})
--给类新增一个new函数，用于创建对象
function  child:new ()
 	o = {};
 	setmetatable(o,child);
 	child.__index = child;
 	return o;
 end 
-- 返回这个继承了多个类的子类
return child;
end



TSprite = {}
    function TSprite:hello()
        print("hello");
    end
    function TSprite:new()
        o = {}
        setmetatable(o, self);
        self.__index = self;
        return o;
end
-- 一个子弹类
TBullet = {}
function TBullet:fire() print("开火");
end
function TBullet:new()
        o = {}
        setmetatable(o, self);
        self.__index = self;
        return o;
end
--继承了两个类的子类
local BulletSprite =
createClass(TSprite, TBullet);

--子类的对象
local bSprite =
BulletSprite:new();
    bSprite:hello();
    bSprite:fire();


--弱table引用
t= {};
-- 给t设置一个元表，增加__mode元方法，赋值为“k”
setmetatable(t,{__mode = "k"});
-- 使用一个table作为t的key值
key1= {name = "key1"};
t[key1] = 1;
key1 = nil;

--又使用一个table作为t的key值
key1= {name = "key2"};
t[key2] = 1;
key2 = nil;

--强制进行一次垃圾收集
collectgarbage();
for key,value in pairs(t) do
   print(key.name .. ":" .. value);
end


