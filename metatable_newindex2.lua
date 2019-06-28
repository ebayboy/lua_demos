
local mytbl = setmetatable({key1="value1"},{__newindex=
function(tbl, key, value) 
    print("key:"..key.." value:"..value)
    rawset(tbl, key, "\""..value.."\"")
end})

print(mytbl.key1)

mytbl.newkey = "newvalue2"

print(mytbl.newkey)

