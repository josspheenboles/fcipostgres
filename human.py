
class Room:
    def __init__(self):
        self.walls=[wall(),,,,]

class Department:
    def __init__(self,id,name):
        self.id=id
        self.name=name

        self.employees=[]
class Employee:
    def __init__(self,id,name,dno):
        self.id=id
        self.name=name
        self.department=Department.objects.get(id=dno)




# class Human:
#     #class var in class
#     count=0    
#     #instance method
#     def __init__(self,id,name,address):
#         print('human constr')
#         #instance var --->defin in constr   
#         self.__id=id #private
#         self.name=name
#         self._address=address  #protected
#         Human.count+=1
#     #instance method
#     def speek(s):
#         print(f'iam {s.name}')
#     #class method
#     @classmethod
#     def getcount(cls):
#         print('Humans',cls.count)
#     #static method
#     @staticmethod
#     def measuretemp(temp=37):
#         if temp>37:
#             print('v.hot')
#         elif temp<37:
#             print('t. cold')
#         else:
#             print('normal')
#     def __str__(self):
#         # print(self)
#         return f'''
#         Id: {self.__id}
#         my name {self.name}
#         my address {self._address}
#         '''
#     def setid(self,id):
#         self.__id=id
#     def getid(self):
#         return self.__id
#     @property.setter
#     def ID(self,id):
#         self.__id=id
#     @property.getter
#     def ID(self):
#         return self.__id


    
# obj=Human(1,'ali','sdd')
# obj.ID=12
# obj.ID
# obj.setid(1000)
# print(obj.getid())
# # # # print(obj.__id)
# # # print(obj._address) 
# # class Employee(Human):
# #     count=0
# #     def __init__(self, id, name, address,salary,position):
# #         print('empl constr.')
# #         super().__init__(id, name, address)
# #         self.salary=salary
# #         self.position=position
# #         Employee.count+=1
# #     def __str__(self):
# #         return super().__str__()+ f'''
# #         my salary:{self.salary}
# #         position:{self.position}
# #         '''
# #     def speek(s):
# #         print(s._address)

# # emp=Employee(1,'mark','asas0',120,'sdds')
# # emp.speek()
# # # class Teacher(Employee):
# # #     count=0
# # #     def __init__(self, id, name, address, salary, position,countlec):
# # #         super().__init__(id, name, address, salary, position)
# # #         self.countlec=countlec
# # #         Teacher.count+=1
# # # o=Human(1,'sdwsd0','sdsd')
# # # emp1=Employee(1,'mark','assas',5000,'front')
# # # print(emp1)
# # # obj=Teacher(1,'mark','assas',5000,'math',10)
# # # obj.speek()
# # # print(Teacher.count)
# # # print(Human.count,Employee.count)