
local function div(a, b)
	if (b == 0) then
		--pcall failed
		error("Error: div 0!!!")
	end

	return  a/b
end

local ok, err = pcall(div, 6, 0)

if (ok == false) then
	print("ok:", ok)
	print("error:", err)
end

