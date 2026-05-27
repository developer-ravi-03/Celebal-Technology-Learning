# List are used as array
# It is a build in data type
# Indexing are also available
# A BUld in data type that store set of values
# It can store elements of diffrent types (integer, float, string, etc.)
# It is lightly different from array beacuse array store same type of data type but list can store differnt types of data type 
# List are mutable :- it can be changed
# string are immutable in python :- it can't change
marks=[94.4,89,34,88,89]
print(marks)
print(len(marks))
print(type(marks))
print(marks[0])
print(marks[1])

student=["ravi", 90, "Bhagalpur",999,79,79,78]
print(type(student))

# list slicing
# [start_idx, end_idx] include start_idx, exclude end_idx

print(student[1:4])
print(student[-3:-1])
print(student[:4])
print(student[1:])


#List method
student.append(4)
print(student)

print(marks)
marks.sort()
print(marks)
marks.sort(reverse=True)
print(marks)

marks.reverse()
print(marks)

# insert(idx,val)
marks.insert(1,8888)
print(marks)

# list.remove(1) # remove first occurance of element
# list.pop(idx) removes element at idx

marks.remove(89)
print(marks)
marks.pop(1)
print(marks)