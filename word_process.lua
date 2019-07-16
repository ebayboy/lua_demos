
--read lines  and , such as hi -> "hi",

file = io.open("word_next", "a")
io.output(file)

for line in io.lines("word") do
    io.write('"'..line..'",\n')
end

io.close(file)

