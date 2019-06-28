

mymetatable = {}
mytable = setmetatable({key1="value1"}, {__newindex=mymetatable})

print(mytable.key1)

mytable.newkey = "newvalue2"
print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "newvalue1"
print(mytable.key1, mymetatable.key1)
