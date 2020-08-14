local m = {}

--private data
m.username = "a"

--private func
local function func_local()
	print("username:" ..  m.username)
end

m.func_local = func_local

function m.func()
	print("global func:")
	print("username:" .. m.username)
end

--public func

return m

