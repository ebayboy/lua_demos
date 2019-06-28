


tbl = {[1]=2, [2] = 6, [3] = 34, [26] = 5}

local max = nil

for k, v in ipairs(tbl) do
    if (max == nil) then
        max = v
    end
    if (max < v) then
        max = v
    end
end

print("max:", max)

print("maxn:", table.maxn(tbl))
