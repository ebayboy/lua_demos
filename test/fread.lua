-- ostream of
f = io.open("1.txt", "r")

-- cin << of
io.input(f)

--read
local line = io.read()
while (line)
do
	print(line)
	line = io.read()
end

io.close()

