
local i = 0

--loadstring 加载脚本并进行编译，如果正常返回脚本函数，错误返回error
local i = 0
local SandBox = {}

local function div(a, b)
	if (b == 0) then
		--pcall failed
		error("Error: div 0!!!")
	end

	print("a/b:", a/b)
	return  a/b
end

--reg func div
SandBox.div = div


local str = "return div(6,2);"
--local str = "div(6,2);" <==> 等价
--function div(6,2)
--{
--   return SandBox.div(6,2)
--}
f, err = loadstring(str)
if (err) then
	print("load script error:", err)
else
	print("load script ok!")
	setfenv( f, SandBox  )
	ok, res = pcall(f)
	print("In env ok:", ok)
	print("In env res:", res)
end


print("\n====Out call:")
local ok, res= pcall(div, 6, 2)

print("ok:", ok)
print("res:", res)

