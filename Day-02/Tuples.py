# A build in data type that lets us to create immutable sequences of values
# list are mutable but tuple are immutable

tuple=(2,3,4,5,6,2,2)
print(tuple)
print(type(tuple))
print(tuple[0])
print(tuple[1])
# tuple[0]=9 Not allowed

# with the single value we need to add comma , if we dont use it that python acts as integer of other data type
tup=(1,)
tup1=(1)
print(type(tup))
print(type(tup1))

# in multiple value there are optional to add comma in last 
print(tuple.index(4)) # return index of element
print(tuple.count(2)) # return count of element