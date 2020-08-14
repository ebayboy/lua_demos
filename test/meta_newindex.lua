
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable  })

mytable.newkey = "newvalue"

print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "newvalue1"
print(mytable.key1, mymetatable.key1)


