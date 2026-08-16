#defination --->var,function,class
pi=3.14
def writetof(path,content):
    with open(path,'w') as f:
        if f.writable():
            f.write(content)

def read(path,option,count=None):
    print('read method')

read(None,None)

