-- 以只读方式打开文件
file = io.open("/root/lua_demos/test.lua", "a+")

io.input(file)
io.output(file)

print(io.read())

io.write("-- test.lua end file")

io.close(file)

