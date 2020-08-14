
local function div(a, b)
	if (b == 0) then
		--pcall failed
		error("Error: div 0!!!")
	end

	return  a/b
end

local ok, res= pcall(div, 6, 2)

print("ok:", ok)
print("res:", res)

