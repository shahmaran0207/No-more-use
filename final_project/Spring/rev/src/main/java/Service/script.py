import pandas as pd
from math import sqrt
from sklearn.model_selection import train_test_split
from sklearn import linear_model
import numpy as np
from sklearn.preprocessing import StandardScaler

#관광 지출액 데이터
df = pd.read_excel("E:\\12월 전자정부기반 e커머스 융합 sw개발자 박정은\\Jung_eun\\final_project\\springversion\\rev\\src\\main\\java\\Service\\최종데이터.xlsx")

#GDP 데이터
gdp=pd.read_excel("E:\\12월 전자정부기반 e커머스 융합 sw개발자 박정은\\Jung_eun\\final_project\\springversion\\rev\\src\\main\\java\\Service\\GDP.xlsx")

#CPI 데이터
cpi=pd.read_excel("E:\\12월 전자정부기반 e커머스 융합 sw개발자 박정은\\Jung_eun\\final_project\\springversion\\rev\\src\\main\\java\\Service\\소비자 물가지수.xlsx")
#기대인플레이션율
expect_inflaction=pd.read_excel("E:\\12월 전자정부기반 e커머스 융합 sw개발자 박정은\\Jung_eun\\final_project\\springversion\\rev\\src\\main\\java\\Service\\기대 인플레이션율.xlsx")

#지역별 방문객
visitor=pd.read_excel("E:\\12월 전자정부기반 e커머스 융합 sw개발자 박정은\\Jung_eun\\final_project\\springversion\\rev\\src\\main\\java\\Service\\지역별 방문자 수.xlsx")

#항목별 컬럼명
new_columns = ['호텔', '콘도', '캠핑장/펜션', '기타숙박', '면세점', '관관기념품', '레저용품쇼핑', '대형쇼핑몰', '관광유원시설', '골프장','스키장', '기타레저', '문화서비스', '식음료']

#소비데이터 - 강원도
gangwon_df =df[df['시도구분'] == '강원도']
gangwon_df=gangwon_df.transpose()
gangwon_df.columns = new_columns
gangwon_df=gangwon_df.drop(gangwon_df.index[0])
gangwon_df=gangwon_df.drop(gangwon_df.index[0])

#gdp 행렬 변환
gdp=gdp.transpose()

#gdp unnammed 행 제거
gdp= gdp.drop(gdp.index[0])

#기대인플레이션율
expect_inflaction=expect_inflaction.transpose()

#기대인플레이션율 unnammed 행 제거
expect_inflaction= expect_inflaction.drop(expect_inflaction.index[0])

#CPI 행렬 변환
cpi=cpi.transpose()

#CPI unnammed 행 제거
cpi= cpi.drop(cpi.index[0])

#방문객 데이터 전처리
visitor=visitor.transpose()
visitor=visitor.drop(visitor.index[0])
new_columns = ['강원도', '경기도', '경상남도', '경상북도', '광주광역시', '대구광역시', '대전광역시', '부산광역시', '서울특별시', '울산광역시', '인천광역시', '전라남도', '전라북도', '제주특별자치도', '충청남도', '충청북도']
visitor.columns = new_columns
visitor_gangwon= visitor[['강원도']]
visitor_gunggi = visitor[['경기도']]
visitor_gyungnam = visitor[['경상남도']]
visitor_gyungbuk = visitor[['경상북도']]
visitor_gangju = visitor[['광주광역시']]
visitor_daegu = visitor[['대구광역시']]
visitor_daejeon = visitor[['대전광역시']]
visitor_busan = visitor[['부산광역시']]
visitor_seoul = visitor[['서울특별시']]
visitor_ulsan = visitor[['울산광역시']]
visitor_incheon = visitor[['인천광역시']]
visitor_jeonnam = visitor[['전라남도']]
visitor_jeonbuk = visitor[['전라북도']]
visitor_jej = visitor[['제주특별자치도']]
visitor_chungnam = visitor[['충청남도']]
visitor_chungbuk = visitor[['충청북도']]

#강원 데이터 통합
total_gangwon=pd.concat([gangwon_df, gdp, cpi,expect_inflaction,  visitor_gangwon], axis=1)
new_columns = ['호텔', '콘도', '캠핑장/펜션', '기타숙박', '면세점', '관광기념품', '레저용품쇼핑', '대형쇼핑몰', '관광유원시설', '골프장','스키장', '기타레저', '문화서비스', '식음료', 'gdp','CPI','기대 인플레이션율',  '강원도 관광객']
total_gangwon.columns = new_columns

#강원도 통합 데이터에서 호텔 및 예측에 필요한 데이터만 추출
gangwon_hotel=total_gangwon[['호텔', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 콘도 및 예측에 필요한 데이터만 추출
gangwon_condo=total_gangwon[['콘도', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 캠핑장/펜션 및 예측에 필요한 데이터만 추출
gangwon_camping=total_gangwon[['캠핑장/펜션', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 기타숙박 및 예측에 필요한 데이터만 추출
gangwon_elsesleep=total_gangwon[['기타숙박', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 면세점 및 예측에 필요한 데이터만 추출
gangwon_dutyfree=total_gangwon[['면세점', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 관광기념품 및 예측에 필요한 데이터만 추출
gangwon_souvenir=total_gangwon[['관광기념품', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 레저용품쇼핑 및 예측에 필요한 데이터만 추출
gangwon_leisureshop=total_gangwon[['레저용품쇼핑', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 대형쇼핑몰 및 예측에 필요한 데이터만 추출
gangwon_hugeshop=total_gangwon[['대형쇼핑몰', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 관광유원시설 및 예측에 필요한 데이터만 추출
gangwon_amuse=total_gangwon[['관광유원시설', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 골프장 및 예측에 필요한 데이터만 추출
gangwon_golf=total_gangwon[['골프장', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 스키장 및 예측에 필요한 데이터만 추출
gangwon_ski=total_gangwon[['스키장', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 기타레저 및 예측에 필요한 데이터만 추출
gangwon_leisure=total_gangwon[['기타레저', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 문화서비스 및 예측에 필요한 데이터만 추출
gangwon_culture=total_gangwon[['문화서비스', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 통합 데이터에서 식음료 및 예측에 필요한 데이터만 추출
gangwon_food=total_gangwon[['식음료', 'gdp','CPI','기대 인플레이션율','강원도 관광객']]

#강원도 예측
# 호텔 예측 학습한 데이터를 다른 데이터로 평가하는 것예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_hotel = gangwon_hotel[gangwon_hotel.columns.difference(['호텔'])]
y_gangwon_hotel = gangwon_hotel['호텔']
X_gangwon_hotel_train , X_gangwon_hotel_test , y_gangwon_hotel_train , y_gangwon_hotel_test = train_test_split(X_gangwon_hotel , y_gangwon_hotel , test_size = 0.2 , random_state = 20)
lr1 = linear_model.LinearRegression()
model1 = lr1.fit(X_gangwon_hotel_train , y_gangwon_hotel_train)

# 강원도 예측에 고려할 공통 데이터
#GDP 상승률 1.4% 가정
gdp_2023=gdp.iloc[-12:]
gdp_2023=gdp_2023*1.014
new_columns = ['2023년 01월', '2023년 02월', '2023년 03월' , '2023년 04월', '2023년 05월', '2023년 06월', '2023년 07월', '2023년 08월', '2023년 09월', '2023년 10월', '2023년 11월', '2023년 12월']
gdp_2023.index = new_columns

#CPI 상승률 3.1 가정
cpi_2023=cpi.iloc[-12:]
cpi_2023=cpi_2023*1.031
new_columns = ['2023년 01월', '2023년 02월', '2023년 03월' , '2023년 04월', '2023년 05월', '2023년 06월', '2023년 07월', '2023년 08월', '2023년 09월', '2023년 10월', '2023년 11월', '2023년 12월']
cpi_2023.index = new_columns

#기대인플레이션율 상승률 2% 가정
expect_inflaction_2023=expect_inflaction.iloc[-12:]
expect_inflaction_2023=expect_inflaction_2023*1.031
new_columns = ['2023년 01월', '2023년 02월', '2023년 03월' , '2023년 04월', '2023년 05월', '2023년 06월', '2023년 07월', '2023년 08월', '2023년 09월', '2023년 10월', '2023년 11월', '2023년 12월']
expect_inflaction_2023.index = new_columns

#관광객 상승률 8% 가정
visitor_gangwon_2023=visitor_gangwon.iloc[-12:]
visitor_gangwon_2023=visitor_gangwon_2023*1.08
new_columns = ['2023년 01월', '2023년 02월', '2023년 03월' , '2023년 04월', '2023년 05월', '2023년 06월', '2023년 07월', '2023년 08월', '2023년 09월', '2023년 10월', '2023년 11월', '2023년 12월']
visitor_gangwon_2023.index = new_columns

# Y축 데이터 통합(강원도_호텔)
gangwon_practice = pd.concat([gdp_2023, cpi_2023,expect_inflaction_2023, visitor_gangwon_2023], axis=1)
new_columns = ['CPI', 'gdp', '기대 인플레이션율', '강원도 관광객']
gangwon_practice.columns = new_columns
gangwon_practice
# 스케일링할 데이터 선택
X_practice = gangwon_practice.values

# 스케일러 객체 생성
scaler = StandardScaler()

# 스케일링 적용
X_practice_scaled = scaler.fit_transform(X_practice)

# 스케일링된 데이터를 DataFrame으로 변환
gangwon_practice_scaled = pd.DataFrame(X_practice_scaled, columns=gangwon_practice.columns, index=gangwon_practice.index)

# 호텔 예측 결과치
X = gangwon_practice_scaled

# 학습할 때 사용한 피처 순서와 동일하게 예측할 피처를 선택
X_practice = X[gangwon_hotel.columns.difference(['호텔'])]

# 호텔 소비 예측
predict_hotel = lr1.predict(X_practice)
predict_hotel = np.round(predict_hotel, decimals=1)
predict_hotel[predict_hotel < 0] = -predict_hotel[predict_hotel < 0]

# 예측 결과를 DataFrame으로 변환
predict = pd.DataFrame(predict_hotel, columns=['2023년 강원도 호텔 소비 예측치'], index=gangwon_practice.index)

#1월 ~ 12월 예측 데이터 각 변수에 저장
g_hotel_23_jan=predict_hotel[0]
g_hotel_23_feb=predict_hotel[1]
g_hotel_23_mar=predict_hotel[2]
g_hotel_23_apr=predict_hotel[3]
g_hotel_23_may=predict_hotel[4]
g_hotel_23_jun=predict_hotel[5]
g_hotel_23_jul=predict_hotel[6]
g_hotel_23_aug=predict_hotel[7]
g_hotel_23_sep=predict_hotel[8]
g_hotel_23_oct=predict_hotel[9]
g_hotel_23_nov=predict_hotel[10]
g_hotel_23_dec=predict_hotel[11]

g_hotel_23 = [{
    "predict_month": "2023year01monthhgangwon",
    "predict_value": g_hotel_23_jan
}, {
    "predict_month": "2023year02monthhgangwon",
    "predict_value": g_hotel_23_feb
},
 {
    "predict_month": "2023year03monthhgangwon",
    "predict_value": g_hotel_23_mar
},
              
   {
    "predict_month": "2023year04monthhgangwon",
    "predict_value": g_hotel_23_apr
},
{
    "predict_month": "2023year05monthhgangwon",
    "predict_value": g_hotel_23_may
},
 {
    "predict_month": "2023year06monthhgangwon",
    "predict_value": g_hotel_23_jun
},
 {
    "predict_month": "2023year07monthhgangwon",
    "predict_value": g_hotel_23_jul
},
{
    "predict_month": "2023year08monthhgangwon",
    "predict_value": g_hotel_23_aug
},
 {
    "predict_month": "2023year09monthhgangwon",
    "predict_value": g_hotel_23_sep
},

              {
    "predict_month": "2023year10monthhgangwon",
    "predict_value": g_hotel_23_oct
},
{
    "predict_month": "2023year11monthhgangwon",
    "predict_value": g_hotel_23_nov
},
 {
    "predict_month": "2023year12monthhgangwon",
    "predict_value": g_hotel_23_dec
},
        
]

# print('{')
# for item in g_hotel_23:
#     print(f"{item['predict_month']}: {item['predict_value']}")
# print('}')

# import json
# t2 = ''
# json.dump(g_hotel_23, t2, ensure_ascii=False, indent=4)

from pprint import pprint
pprint(g_hotel_23.__str__().replace("'", '"'))

for item in g_hotel_23:
    predict_month = item["predict_month"]
    predict_value = item["predict_value"]

    # 여기서 predict_month, predict_value를 사용하여 데이터베이스에 삽입하는 코드를 작성하세요.
    # 예를 들어, 아래와 같이 작성할 수 있습니다.
    
    # 쿼리 작성
    sql_insert = 'INSERT INTO your_table_name (predict_month, predict_value) VALUES (:predict_month, :predict_value)'

    # 쿼리 실행
    cursor.execute(sql_insert, predict_month=predict_month, predict_value=predict_value)

# 반복문 종료 후 커서와 연결을 닫고 커밋
cursor.close()
conn.commit()
