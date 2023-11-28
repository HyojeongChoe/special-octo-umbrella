import csv
import matplotlib.pyplot as plt

f = open('tax.csv','r')

data = csv.reader(f)

mydatas = []

isStart = True
for line in data: #rdr에 있는 걸 한 줄씩 읽을 것
    if isStart:
       isStart=False
    else:
        mydatas.append(line)
f.close()

numbers = []

for item in mydatas:
    numbers.append(float(item[4]))

for item in numbers:
    print(item)
x=list(range(1,7))

plt.title('Bar')
plt.bar(x,numbers)
xlabels = [2017, 2018, 2019, 2020, 2021, 2022]
plt.xticks(x,xlabels)
plt.show()