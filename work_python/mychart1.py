import csv #csv 파일 읽는 라이브러리 호출
import matplotlib.pyplot as plt

f = open('mydata2.csv','r')

rdr = csv.reader(f) #파일 데이터를 읽음
mydatas = [] #리스트 선언

isStart = True
for line in rdr: #rdr에 있는 걸 한 줄씩 읽을 것
    if isStart:
        isStart=False
        #pass
    else:
        mydatas.append(line)
f.close()
numbers = []

for item in mydatas:
    numbers.append((float(item[2])))

for item in numbers:
    print(item)
x=list(range(1,83))

plt.title('Bar')
plt.bar(x,numbers)
plt.show()