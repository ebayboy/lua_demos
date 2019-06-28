

mytable = setmetatable({10, 20, 30}, {
    __tostring = function(mytable)
        sum = 0
        for i = 1, table.maxn(mytable) do
            sum = sum + mytable[i]
        end
        return "all sum is:" .. sum
    end
})

print(mytable)
