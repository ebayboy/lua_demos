

--定义模块名字
local md = {}

--定义一个变量
md.str1 = "a"

--定义一个局部函数
local function func_local()
    print("Are you ok!")
end

--定义一个全局函数
function md.func()
    print("I am here")
    func_local()
end

return md

