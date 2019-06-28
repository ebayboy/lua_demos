

fruits = {"banana", "orange", "apple", "grapes"}

print("before sort")
for k, v in ipairs(fruits) do 
    print(k, v)  
end

table.sort(fruits)

print("after sort")
for k, v in ipairs(fruits) do 
    print(k, v)  
end

