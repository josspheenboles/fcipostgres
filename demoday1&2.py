# mode==>r,w,a,r+
#r===>fille exsist,not found --->error
#w--->file exsist--->clear,not found--->create
#a--->file exsist--->seek to last char,not found--->create
#r+===>fille exsist--->read write,not found --->error
f=open('asd.txt','r')
if f.readable():
    for line in f:
        print(line)
    # print(f.readline())
    # print(f.read(2))
    # content=f.read()
    # print(content)
    # print(f.read())
f.close()

# f=open('asd.txt','a')#open file seek
# if f.writable():
#     f.write('hi fci\nsdsds')
#     names=['razan ','refat\n','mina']
#     f.writelines(names)
# f.close()
# try:
#     # 1/0
#     # int('a')
#     # open('asd.txt','r')
    
#     n1=(input('enter number1'))

#     n2=(input('enter number2'))
#     if n1.isdigit() and n2.isdigit():
#         n1,n2=int(n1),int(n2)
        
#     else:
#         print(n1,n2 ,'must be numberss')
# except ZeroDivisionError:
#     print('cannt divid by zero')
# except ValueError:
#     print('miss casting')
# except Exception as e:
#     print(e)
# else:
#     print('ok runing')
# finally:
#     print(n1+n2)
# # # varname=lambda x:x+5
# # # for x in map(varname,[1,2,3]):
# # #           print(x)


# # # # def values(num):
# # # #     for n in range(1,num+1):
# # # #         yield n
# # # # x=values(3)
# # # # print(next(x))
# # # # print(next(x))
# # # # print(next(x))
# # # # print(next(x))
# # # # # def addf(number):
# # # # #     return number+4
# # # # # varname=lambda number:number+4
# # # # # print(varname(5))
# # # # # l=[]
# # # # # for m in range(1,13,1):
# # # # #    if m%2==0:
# # # # #     l.append(m)
# # # # # print(l) 
# # # # # print([m for m in range(1,13,1) if m%2==0])

# # # # # def add(**kargs):
# # # # #     # res=0
# # # # #     # for k,v in kargs.items():
# # # # #     #     res+=v
# # # # #     print(kargs)
# # # # # d={'n1': 1, 'n2': 3}
# # # # # add(**d)#{'k':d}

# # # # # # # # format key,Value

# # # # # # # add(n1=1,n2=3) #packing {'n1':1,'n2':3}
# # # # # # # d={'n1': 1, 'n2': 3}
# # # # # # # add(**d)#unpaking add (n1=1,n2=3)-->packing {k:d}
# # # # # # # # # # min params
# # # # # # # # # # rang()
# # # # # # # # # #* as tuple
# # # # # # # # def add(*args):#add (args:tuple)
# # # # # # # #     res=0
# # # # # # # #     for n in args:
# # # # # # # #         res+=n
# # # # # # # #     print(res)
# # # # # # # # # # add(1)
# # # # # # # # # add(1,2)#packing (1,2)
# # # # # # # # t=1,2,4,4,5,6,6
# # # # # # # # 1,2,3,4,5,6-->(1,2,3,4,5,6)
# # # # # # # # add(*t)#unpacking 1,2,3,4,--->packing(t,)
# # # # # # # # # # #default arg.
# # # # # # # # # # def add(x,y=0,z=0):
# # # # # # # # # #     print(x+y+z)
# # # # # # # # # # add(1,2)
# # # # # # # # # # add(1)
# # # # # # # # # # add(1,2,3)


# # # # # # # # # # # x=1
# # # # # # # # # # # x=1.1

# # # # # # # # # # #overloading
# # # # # # # # # # def add(x:int,y:int):
# # # # # # # # # #     print(x+y)
# # # # # # # # # # def add(x:float,y:float):
# # # # # # # # # #     print(x+y)
# # # # # # # # # # print(add)
# # # # # # # # # # # def add(x,y,z):
# # # # # # # # # # #     print(x+y+z)
# # # # # # # # # # # print(add)
# # # # # # # # # # add(1,2)
# # # # # # # # # # add('as','ase')


# # # # # # # # # # # # #list collection  of values ,diff data types,mutable
# # # # # # # # # # # # l=['django','oop']
# # # # # # # # # # # # l2=['genai','vibe']
# # # # # # # # # # # # print(l+l2)
# # # # # # # # # # # # print(l*3)
# # # # # # # # # # # # #tuple #immutable
# # # # # # # # # # # # t=(1,)
# # # # # # # # # # # # t=(1,[])
# # # # # # # # # # # # t[1]=['sdsdd']
# # # # # # # # # # # # t[1].append('asxas')
# # # # # # # # # # # # print(t)

# # # # # # # # # # # # print(type(t))
# # # # # # # # # # # #dict key value
# # # # # # # # # # # d={'id':1,   'fname':'aya',   'lname':'ali'   }
# # # # # # # # # # # d2={'id':2000}
# # # # # # # # # # # # {'id':2000,'id':2000}
# # # # # # # # # # # # print(d2+d)
# # # # # # # # # # # # {'id':1,'fname':'aya','lname':'ali','id':2000  }
# # # # # # # # # # # # print(d.update(d2))
# # # # # # # # # # # # print(d)
# # # # # # # # # # # print(d2.update(d))
# # # # # # # # # # # print(d2)
# # # # # # # # # # # #set unique,ordered




# # # # # # # # # # # # # # range(start=0,end,step=1)
# # # # # # # # # # # # # print(range(5))
# # # # # # # # # # # # # range(1,13)
# # # # # # # # # # # # # range(1,13,2)
# # # # # # # # # # # # for month in range(1,13):
# # # # # # # # # # # #     if month==7:
# # # # # # # # # # # #         continue
# # # # # # # # # # # #     print(month)
# # # # # # # # # # # # else:
# # # # # # # # # # # #     print('else for')


# # # # # # # # # # # # # #formate
# # # # # # # # # # # # # #function key,value
# # # # # # # # # # # # # templatestr='accsess from ip {ip}  message {msg} {ip} {ip}'
# # # # # # # # # # # # # l=[('192.8.10.2','h,w error'),('172.5.5.6','h,w error')]
# # # # # # # # # # # # # for t in l:
# # # # # # # # # # # # #    print( templatestr.format(ip=t[0],msg=t[1]))
# # # # # # # # # # # # # # x,y=[1,2,3  ]
# # # # # # # # # # # # # # print(x,y)

# # # # # # # # # # # # # # # #collection of char ,
# # # # # # # # # # # # # # # name='ahmed'
# # # # # # # # # # # # # # # # print(type(name),name[0])
# # # # # # # # # # # # # # # #slicing
# # # # # # # # # # # # # # # #[start=0:end=(lencoll+1):step=1]
# # # # # # # # # # # # # # # print(name[0],name[-5])
# # # # # # # # # # # # # # # print(name[::-1])
# # # # # # # # # # # # # # # name[0]='A'

# # # # # # # # # # # # # # # # min(1,2)
# # # # # # # # # # # # # # # # print(min(1,2,3,4,4,5,-6))


# # # # # # # # # # # # # # # # c1=1+2j
# # # # # # # # # # # # # # # # c2=3+4j
# # # # # # # # # # # # # # # # print(type(c1),type(c2))
# # # # # # # # # # # # # # # # print(c1+c2)
# # # # # # # # # # # # # # # # # import sys

# # # # # # # # # # # # # # # # print(sys.maxsize)

# # # # # # # # # # # # # # # # #packing,unpacking
# # # # # # # # # # # # # # # # #declare var
# # # # # # # # # # # # # # # # #()
# # # # # # # # # # # # # # # # #* list,tuple
# # # # # # # # # # # # # # # # t=1,2,3,5,6,7,3
# # # # # # # # # # # # # # # # print(type(t))
# # # # # # # # # # # # # # # # x,y,*z=t #unpaking
# # # # # # # # # # # # # # # # print(x,y,z)

# # # # # # # # # # # # # # # # # print('hello wolrd')
# # # # # # # # # # # # # # # # # #prem int,float,str,bool,
# # # # # # # # # # # # # # # # # x=1
# # # # # # # # # # # # # # # # # print(type(x))
# # # # # # # # # # # # # # # # # x=2.2
# # # # # # # # # # # # # # # # # print(type(x))

# # # # # # # # # # # # # # # # # #nonprem list,tuple,set,dict