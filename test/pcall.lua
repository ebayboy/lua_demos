
local function div(a, b)
	if (b == 0) then
		--pcall failed
		error("Error: div 0!!!")
	end

	return  a/b
end


if (pcall(div, 6, 0)) then
	print("test ok!")
else
	print("test fail!")
end

