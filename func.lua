

local function sum_num(a,b)
    local c = a - b
    local d = a + b
    return c,d
end

c, d = sum_num(10, 5)

print(string.format("c=%d, d=%d\n", c, d))

