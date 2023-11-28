import json
import urllib.request
import matplotlib.pyplot as plt

myurl = 'https://api.odcloud.kr/api/15049906/v1/uddi:8f4d5356-af18-4160-acd2-db1c09e28856?page=1&perPage=100&serviceKey=OqbDk1QmGadGVjiqa9KcsFHcWNX4fB8KZTQcJBIkziRytniTJLVhULNyilHDRA4gPB27O2XrQu9JvvvMgj%2Bfqw%3D%3D'

response = urllib.request.urlopen(myurl)
response = response.read().decode('utf8')   #한글 깨짐 방지

print(response)

#response 데이터를 json 형태로 바꿈
data = json.loads(response)
json_arr = data['data']     #key가 'data'인 것만 갖고 옴

#csv와는 다르게 열 이름(colums이름)을 직접 입력할 수 있음
# for item in json_arr:
#     print(f"연도:{item['연도']}, 월:{item['월']}, 생산량:{item['생산량(톤)']}")


years = [item['연도'] for item in json_arr]
months = [item['월'] for item in json_arr]
production = [item['생산량(톤)'] for item in json_arr]

# 차트 표시
plt.figure(figsize=(10, 6))
plt.bar(months, production, color='blue')
plt.title('월별 생산량')
plt.xlabel('월')
plt.ylabel('생산량(톤)')
plt.grid(axis='y')
plt.show()

