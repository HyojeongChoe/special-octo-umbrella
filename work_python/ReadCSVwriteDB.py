import csv
import pymysql

#ctrl shift f10 현재코드 진행

#f =  파일을 처리하는 변수
#open 함수를 통해 읽어들인 파일에 대한 내용들

f = open('mydata.csv', 'r')     #변수명 바꿔도 상관 없음

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

#안정성이 높지만 코드가 보기 불편
#데이터 하나씩 넣고 하나씩 저장

sql = 'insert into apitable(name, hp, menu) '
sql = sql + "values('%s', '%s', '%s')"

for item in mydatas:
    conn = pymysql.connect(
        host ='localhost',
        user = 'root',
        password = '1234',
        db = 'apidb',
        charset = 'utf8'
    )
    #with : db 연결 후에 다 되면 자동으로 연결 끊어줌
    with conn:
        with conn.cursor() as cur:  #db 안에 실제 명령 수행하는 것
            cur.execute(sql % (item[1], item[3], item[4]))
            conn.commit()
