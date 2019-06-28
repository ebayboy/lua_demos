

fruits = {"banana", "orange", "apple"}

table.insert(fruits, "mango")

print("index 2 is:", fruits[2])

print("index 4 is:", fruits[4])


table.insert(fruits, 2, "grapes")

print("after insert index 2 is:", fruits[2])
print("last", fruits[5])

table.remove(fruits, 5)
print("after del 5 last", fruits[5])

