
--write file
f = io.open("2.txt", "w+")

io.output(f)

local i = 0
while(i<10) do
	io.write("test lu" .. i .. "\n")
	i = i + 1
end

io.close()


