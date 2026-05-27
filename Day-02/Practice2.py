# list1=[1,2,3,2,1]
# list2=list1.copy()
# list2.reverse()
# print(list1==list2)

list1=[1,"abc","abc",1]
list2=list1.copy()
list2.reverse()
if(list1==list2):
  print("Pallindrome")
else:
  print("Not Pallindrome")