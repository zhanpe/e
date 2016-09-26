
-- dofile("./luaFolder/hello.lua")

-- print(#t)

-- print(type(coroutine))
-- local co= coroutine.create(function()
-- print("hello coroutine")
-- end)

-- print(coroutine.status(co))
-- coroutine.resume(co)
-- print(coroutine.status(co))

--挂起
-- local co = coroutine.create(function ()
-- 	for i=1, 2, 1 do
-- 		print("你好，协同程序" .. i);
-- 		coroutine.yield();
-- 		print(i)
-- 	end
-- end);
-- coroutine.resume(co);
-- print(coroutine.status(co));
-- coroutine.resume(co);
-- print(coroutine.status(co));
-- coroutine.resume(co);
-- print(coroutine.status(co));

-- local co = coroutine.create(function(name)
--          print(name);
--      end);
-- coroutine.resume(co, "resume param");


function io.readfile(path)
	local file =io.open(path,"r")
	if file then
		local content = file:read("*a")
		io.close(file)
		return content
    end
 return nil
end

function io.writeflie(path, content, mode )
	mode = mode or "w+b"
	local file = io.open(path,mode)
	if file then
		if file:write(content) == nil then return
			false end
		io.close(file)
        return true
    else
        return false
    end
end










