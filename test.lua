--test.lua

local n_table = 
{
    -- string is key
    test = "testnginx",

    -- string is key
    city = {"shanghai", "beijing", "shenzhen"},

    -- default 
    "sada",

    -- number is key
    [17] = 360,

    -- default
    12312
}

print(n_table.test)
print(n_table.city[2])
print(n_table[1])
print(n_table[2])
print(n_table[17])

function res(st)
    if st == 'test' then
        return 'this is test'
    else
        return 'this is not test'
    end
end

print(res("test"))

local a = res
print(a("123"))

-- test.lua end file