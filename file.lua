-- 以只读方式打开文件
file = io.open("/root/lua_demos/test.lua", "r")

-- 设置默认输入文件为 test.lua
io.input(file)

-- 输出文件第一行
print(io.read())

-- 关闭打开的文件
io.close(file)



file = io.open("test.lua", "a")

io.output(file)

io.write("-- test.lua end file")

io.close()

