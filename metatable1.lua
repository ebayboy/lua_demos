


function meta_index(tbl, key)
    if (key == "key2") then
        return "metatablevalue"
    else
        return nil
    end
end

mytable = {key1="value1"}
metatable = {__index = meta_index}

setmetatable(mytable, metatable)

print(mytable.key1, mytable.key2, mytable.key3)
