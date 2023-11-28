import xml.etree.ElementTree as elemTree

#pip install 터미널 들어가서 or 마우스올려서 패키지 설치
import requests

myurl = 'https://api.odcloud.kr/api/3047940/v1/uddi:633f7dab-ffb5-4843-bc65-bd7f3b99dfa2?page=1&perPage=1000&returnType=XML&serviceKey=OqbDk1QmGadGVjiqa9KcsFHcWNX4fB8KZTQcJBIkziRytniTJLVhULNyilHDRA4gPB27O2XrQu9JvvvMgj%2Bfqw%3D%3D'

response = requests.get(myurl)
#응답받은걸 텍스트로 변환-> 문자열을 가지고 xmldatas에 넣기
xmldatas = elemTree.fromstring(response.text)
myresult = xmldatas.find('data').findall('item')


for item in myresult:
    print('식당명:{},주메뉴:{},전화번호:{}'.format(item.find('./col[@name="상호명"]').text,
                                         item.find('./col[@name="주메뉴"]').text,
                                         item.find('./col[@name="전화번호"]').text))

