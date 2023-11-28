import csv
import pymysql
from matplotlib import pyplot as plt

f = open('tax.csv', 'r')     #변수명 바꿔도 상관 없음

#파일 데이터를 읽음 (readline 이라 바꿔도 상관 x)
rdr = csv.reader(f)

#리스트 선언
mydatas = []

isStart = True

for line in rdr:   #rdr에 있는 걸 한줄 씩 읽음
    if isStart:
        isStart = False
        pass
    else:
        mydatas.append(line)
f.close()


for item in mydatas:
    conn = pymysql.connect(
        host ='localhost',
        user = 'root',
        password = '1234',
        db = 'apidb',
        charset = 'utf8'
    )
sql = 'select * from apitable2'

cur = conn.cursor()
cur.execute(sql)
numbers = cur.fetchall()
results = []
for item in numbers:
    results.append(float(item[1]))
x=list(range(1,7))

plt.title('Bar')
plt.bar(x,results)
plt.show()