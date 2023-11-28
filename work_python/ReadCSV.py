import csv

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

#전체출력
for item in mydatas:
     print(item)

#원하는 값만 출력
for item in mydatas:
        print(('상호명:%s, 전화번호:%s, 대표메뉴:%s') % (item[1],item[3],item[4]))