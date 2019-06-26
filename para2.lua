
local function sum_num(...)
    local a = "a"
    for i, v in ipairs{...} do
        a = a .. v
    end
    return a
end

local a = sum_num("b", "c", "c", "1")

print(a)

