class A:
    count='A'
    def __init__(self):
        self.x=1
        print('const A')

class B :
    count='B'
    def __init__(self):
        self.y='y'
        self.x=10
        print('const B')

class Child(A,B):
    pass


obj =Child()
print(obj.x,Child.count)