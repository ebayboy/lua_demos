
mytable = {}
print("my type is", type(mytable))


mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为1的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

altertable = mytable
print("alter 索引为1的元素是 ", altertable[1])
print("alter 索引为 wow 的元素是 ", altertable["wow"])

altertable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

--释放变量
altertable = nil
print("altertable 是", altertable)

--mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable is", mytable)

