# This is a sample Python script.

# 한 줄 주석
# Shift + F10 혹은 위의 화살표 클릭

"""이건 여러 줄 주석도 되고
여러 줄 짜리 문자열도 됨
"""
'''작은 따옴표도 됨'''

print("Hello")
print('World')

multi_line = '''
여러 줄 문장은
이렇게 적을 수 있습니다. 
'''
print(multi_line)

multi_line2 = """
큰 따옴표와 작은 따옴표 모두
가능합니다.
"""
print(multi_line2)

multi_line3 = "이렇게\n쓰는것도 됩니다."
print(multi_line3)

List1 = [1 ,2 ,3 ,4 ,5]
List2 = [1.0, 3.14, 2.0]

print(List1[0])
List1[0] = 100
print(List1[0])
print(List1)
List1.append(1000)
print(List1)
List1.insert(1, 3.14)
print(List1)
List1 = List1 + [10]
print(List1)
List1 = List1 + [30, 40]
print(List1)

a = List1.pop()
print(a)
print(List1)

del List1[0]
print(List1)

count = 0
while count < 3:
    print("반갑습니다.")
    count +=1


# while True:
#     print('숫자 입력: ')
#     num = int(input())
#     if num == 0:
#         print("처음으로 돌아갈 것")
#         continue
#     elif num == -1:
#         print("반복문 종료")
#         break
#     else:
#         print("입력한 숫자 %d" % num)

numbers = range(1,10)
for i in numbers:
    print(i)

hj = {
    'born' : '950922',
    '성별' : '여성',
    '성' : 'Choe'
}

for keys in hj.keys():
    print(keys)
for vals in hj.values():
    print(vals)
for item in hj.items():
    print(item)
for k,v in hj.items():
    print(k,v)

def printCircle(r,pi):
    print("반지름 : %d" % r)

