--print("hello lua")
--[[print(b)
b=10
print(b)
--]]

--[[print(type("helloworld"))
print(type(true))
print(type(3.3))
print(type(print))
print(type(nil))
print(type({}))
print(type(type(123)))
 --]]

 --[[a=10
 print(a)
 a="hello"
 print(a)
 a=print
 a("hellolua")
--]]

--false nil为假，其他都为真
--[[if  nil then
	print("zhen")
else
	print("jia")
end
--]]
--[[
a= "one string"
b=string.gsub(a,"one","another")
print(b)
--]]

--[[
print("hello".."lua".."123")
print("10".."1")
print(10 ..1)
print("10"+1)
print("10"+"22")
print(tonumber("sss"))
print(tostring(123))
--]]

--[[
print("10"==10)

for i=1,10,2 do
	local name = "image"..i..".png"
	local  str = string.format("image%d.png",i)
	print(str)
end

local  sum = 0
for i=1,100,1 do
	sum=sum+i
	print(sum)
end
]]

--[[
print(4 and 5)
print(nil and 5)
print(false and 4)
print(8 or false)
print(nil or 4)
print(4~=5)
]]
--[[
local  a = 10
local  b = 20
a,b,c= b,a,30,40
print(a)
print(b)
print(c)
]]

-- local  score = 80
-- if score>90 then
-- 	print("A")
-- 	elseif score>80 then
-- 		print("B")
-- 		elseif score>70 then
-- 			print("C")
-- 		else 
-- 			print("D")	
-- end

-- local  sum = 0;
-- local  i = 0;
-- while i<=100 do
-- 	sum = sum+i
-- 	i=i+1
-- end
-- print(sum)


--[[
function max(a,b)
	if a>b then
		return a
		else
			return b
		end
	end

--print(max(30,40))

function test()
	return 10,20,30
end
a,b,c=20,40,test();
print(a ..b ..c)

]]


--[[
local  days = {"Sunday","Mon","Tues","Thurs","Fri"}
print(days[1])
days[6]="sat"
print(days[6])


local people = {
	name="zhangsn",
	age=30,
	sex="girl"
}
people.gra="hello"
--people["gra"]="hello"
print(people.name)
print(people["name"])
print(table.maxn(people))

 for i,v in pairs(people)  do --遍历
 	print(i,v)
 end

for i,v in ipairs(days) do
	print(i,v)
end

]]

-- local tabFiles = {
-- 	"A","B",
-- 	[4] = "test2",
-- 	[5] = "test3",
-- 	[6] = "test1"
-- }
-- for k,v in ipairs(tabFiles) do
-- 	print(k,v)
-- end

-- local arr = {}
-- for i=1,10 do
-- 	table.insert(arr,1,i)
-- end
-- for k,v in pairs(arr)  do
-- 	print(k,v)
-- end

--闭合函数
--[[
function count()
	local i = 0
	return function ()
		i=i+1
		return i	
		end
	end
local func = count()
print(func)
print(func())
print(func())	
print(func())
]]

--两种方式等价

-- local function test()
-- 	print("A")
-- end
-- local test
-- test=function ()
-- 	print("B")
-- end
-- test()

-- 尾调用
-- local eat;
-- local drink;

-- eat=function()
-- print("eat");
-- return drink()+1 ;
-- end
-- drink=function()
-- 	print("drink")
-- end
-- eat()


--迭代器
-- function  Diedaiqi(t)
-- 	local i = 0
-- 	return function ()
-- 		i=i+1
-- 		if i> #t then
-- 			return nil		
-- 		end
-- 		return i,t[i]
-- 	end
-- end
-- local t = {"A","B","C"}

-- for k,v in Diedaiqi(t) do
-- 	print(k .. " ," ..   v)
	
-- end

-- local iter = Diedaiqi(t); --第2种
-- while true do
-- 	local value = iter();
-- 	if value == nil then
-- 		break;
-- 	end
-- 	print(value);
-- end


-- function hello(...)
--   local t={...}
--   print(#t)
--   print(t[2])
-- end
-- hello(1,2,3,4,5,6)

-- a={x=3,y=6}
-- b=a
-- b.x=8
-- print(a.x)

--[[
function copy(t)
	local t= {}
	for k,v in pairs(t) do
		t[k]=v
	end
    return t
end
local a={x=3,y=5}
local b=copy(a)
b.x=8
print(a.y)
print(b.y)
--]]

-- local name = "张"
-- local result = assert(name=="张三","你不是张三")
-- print(result)


 function test()
        print(a[1]);
    end
    local status,err = pcall(test)
    if status then
   print("err");
    print("正常"); 
 else
  print("函数出错了,我正在帮你处理");
  print("err")
 end

