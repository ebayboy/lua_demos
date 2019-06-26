

local function tbl_sort(a, b)
    return b < a
end

local function show_tbl(t)
    print("show_tbl:")
    for k,v in ipairs(t) do
        print(k, v)
    end
end

local a = {1, 8}

--getn
print(table.getn(a))

--insert index
table.insert(a, 2, 5)

--insert end
table.insert(a, 4)

show_tbl(a)

print(table.concat(a, ","))

--default sort
table.sort(a)
print("Default sort:", table.concat(a, ","))

--self sor
table.sort(a, tbl_sort)
print("After self sort:", table.concat(a, ","))

--remove
table.remove(a, 2)
print("After delete:", table.concat(a, ","))

print(table.concat(a, ",", 1, 2))

