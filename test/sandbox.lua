
-- 创建沙盒
function SpawnSandBox( )

	local SandBoxGlobals = {}

	-- 基础函数添加
	SandBoxGlobals.print             = print
	SandBoxGlobals.table             = table
	SandBoxGlobals.string             = string     
	SandBoxGlobals.math               = math 
	SandBoxGlobals.assert             = assert 
	SandBoxGlobals.getmetatable    = getmetatable 
	SandBoxGlobals.ipairs             = ipairs 
	SandBoxGlobals.pairs             = pairs 
	SandBoxGlobals.pcall             = pcall 
	SandBoxGlobals.setmetatable    = setmetatable 
	SandBoxGlobals.tostring        = tostring 
	SandBoxGlobals.tonumber        = tonumber 
	SandBoxGlobals.type            = type 
	SandBoxGlobals.unpack             = unpack 
	SandBoxGlobals.collectgarbage     = collectgarbage
	SandBoxGlobals._G                = SandBoxGlobals

	return SandBoxGlobals
end

-- 在沙盒内执行脚本, 出错时返回错误, nil表示正确
function ExecuteInSandBox( SandBox, Script )
	--loadstring 返回 函数脚本， 和编译信息
	local ScriptFunc, CompileError = loadstring( Script )

	if CompileError then
		return CompileError
	end

	--set function execution env
	setfenv( ScriptFunc, SandBox )

	local Result, RuntimeError = pcall( ScriptFunc )
	if RuntimeError then
		--出错返回: Response=出错信息
		return RuntimeError
	end

	--正常返回Response = nil
	return nil
end

function ProtectedFunction( )
	print("protected func")
end


local SandBox = SpawnSandBox( )


print ( "Response=", ExecuteInSandBox( SandBox, "table.foreach( _G, print )" ) )
print("==============foreach over!")

--Response=	[string "ProtectedFunction()"]:1: attempt to call global 'ProtectedFunction' (a nil value)
print ( "Response=", ExecuteInSandBox( SandBox, "ProtectedFunction()" ) )

SandBox.ProtectedFunction = ProtectedFunction
--protected func
print ( "Response=", ExecuteInSandBox( SandBox, "ProtectedFunction()" ) )


