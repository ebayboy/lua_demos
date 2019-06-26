

local function sum_num(a)
    local b = a + 1
    if (b == 3) then
        return a .. " ---match"
    else
        return "no match"
    end
    print('123')
end


local num = sum_num(2)
print(num)

