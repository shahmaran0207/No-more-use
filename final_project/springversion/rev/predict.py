import pandas as pd
from math import sqrt
from sklearn.model_selection import train_test_split
from sklearn import linear_model
import numpy as np
from sklearn.preprocessing import StandardScaler

#관광 지출액 데이터
df = pd.read_excel("최종데이터.xlsx")

#GDP 데이터
gdp=pd.read_excel("GDP.xlsx")

#CPI 데이터
cpi=pd.read_excel("소비자 물가지수.xlsx")

#기대인플레이션율
expect_inflaction=pd.read_excel("기대 인플레이션율.xlsx")

#지역별 방문객
visitor=pd.read_excel("지역별 방문자 수.xlsx")

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

#강원도 예측
# condo 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_condo = gangwon_condo[gangwon_condo.columns.difference(['콘도'])]
y_gangwon_condo = gangwon_condo['콘도']
X_gangwon_condo_train , X_gangwon_condo_test , y_gangwon_condo_train , y_gangwon_condo_test = train_test_split(X_gangwon_condo , y_gangwon_condo , test_size = 0.2 , random_state = 20)
lr２ = linear_model.LinearRegression()
model２ = lr２.fit(X_gangwon_condo_train , y_gangwon_condo_train)

#강원도 예측
# camping 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_camping = gangwon_camping[gangwon_camping.columns.difference(['캠핑장/펜션'])]
y_gangwon_camping = gangwon_camping['캠핑장/펜션']
X_gangwon_camping_train , X_gangwon_camping_test , y_gangwon_camping_train , y_gangwon_camping_test = train_test_split(X_gangwon_camping , y_gangwon_camping , test_size = 0.2 , random_state = 20)
lr3 = linear_model.LinearRegression()
model3 = lr3.fit(X_gangwon_camping_train , y_gangwon_camping_train)

#강원도 예측
# elsesleep 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_elsesleep = gangwon_elsesleep[gangwon_elsesleep.columns.difference(['기타숙박'])]
y_gangwon_elsesleep = gangwon_elsesleep['기타숙박']
X_gangwon_elsesleep_train , X_gangwon_elsesleep_test , y_gangwon_elsesleep_train , y_gangwon_elsesleep_test = train_test_split(X_gangwon_elsesleep , y_gangwon_elsesleep , test_size = 0.2 , random_state = 20)
lr4 = linear_model.LinearRegression()
model4 = lr4.fit(X_gangwon_elsesleep_train , y_gangwon_elsesleep_train)

#강원도 예측
# dutyfree 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_dutyfree = gangwon_dutyfree[gangwon_dutyfree.columns.difference(['면세점'])]
y_gangwon_dutyfree = gangwon_dutyfree['면세점']
X_gangwon_dutyfree_train , X_gangwon_dutyfree_test , y_gangwon_dutyfree_train , y_gangwon_dutyfree_test = train_test_split(X_gangwon_dutyfree , y_gangwon_dutyfree , test_size = 0.2 , random_state = 20)
lr5 = linear_model.LinearRegression()
model5 = lr5.fit(X_gangwon_dutyfree_train , y_gangwon_dutyfree_train)

#강원도 예측
# 레저용품쇼핑 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_leisureshop = gangwon_leisureshop[gangwon_leisureshop.columns.difference(['레저용품쇼핑'])]
y_gangwon_leisureshop = gangwon_leisureshop['레저용품쇼핑']
X_gangwon_leisureshop_train , X_gangwon_leisureshop_test , y_gangwon_leisureshop_train , y_gangwon_leisureshop_test = train_test_split(X_gangwon_leisureshop , y_gangwon_leisureshop , test_size = 0.2 , random_state = 20)
lr6 = linear_model.LinearRegression()
model6 = lr6.fit(X_gangwon_leisureshop_train , y_gangwon_leisureshop_train)

#강원도 예측
# hugeshop 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_hugeshop = gangwon_hugeshop[gangwon_hugeshop.columns.difference(['대형쇼핑몰'])]
y_gangwon_hugeshop = gangwon_hugeshop['대형쇼핑몰']
X_gangwon_hugeshop_train , X_gangwon_hugeshop_test , y_gangwon_hugeshop_train , y_gangwon_hugeshop_test = train_test_split(X_gangwon_hugeshop , y_gangwon_hugeshop , test_size = 0.2 , random_state = 20)
lr7 = linear_model.LinearRegression()
model7 = lr7.fit(X_gangwon_hugeshop_train , y_gangwon_hugeshop_train)

#강원도 예측
# amuse 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_amuse = gangwon_amuse[gangwon_amuse.columns.difference(['관광유원시설'])]
y_gangwon_amuse = gangwon_amuse['관광유원시설']
X_gangwon_amuse_train , X_gangwon_amuse_test , y_gangwon_amuse_train , y_gangwon_amuse_test = train_test_split(X_gangwon_amuse , y_gangwon_amuse , test_size = 0.2 , random_state = 20)
lr8 = linear_model.LinearRegression()
model8 = lr8.fit(X_gangwon_amuse_train , y_gangwon_amuse_train)

#강원도 예측
# golf 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_golf = gangwon_golf[gangwon_golf.columns.difference(['골프장'])]
y_gangwon_golf = gangwon_golf['골프장']
X_gangwon_golf_train , X_gangwon_golf_test , y_gangwon_golf_train , y_gangwon_golf_test = train_test_split(X_gangwon_golf , y_gangwon_golf , test_size = 0.2 , random_state = 20)
lr9 = linear_model.LinearRegression()
model9 = lr9.fit(X_gangwon_golf_train , y_gangwon_golf_train)

#강원도 예측
# ski 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_ski = gangwon_ski[gangwon_ski.columns.difference(['스키장'])]
y_gangwon_ski = gangwon_ski['스키장']
X_gangwon_ski_train , X_gangwon_ski_test , y_gangwon_ski_train , y_gangwon_ski_test = train_test_split(X_gangwon_ski , y_gangwon_ski , test_size = 0.2 , random_state = 20)
lr10 = linear_model.LinearRegression()
model10 = lr10.fit(X_gangwon_ski_train , y_gangwon_ski_train)

#강원도 예측
# culture 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_culture = gangwon_culture[gangwon_culture.columns.difference(['문화서비스'])]
y_gangwon_culture = gangwon_culture['문화서비스']
X_gangwon_culture_train , X_gangwon_culture_test , y_gangwon_culture_train , y_gangwon_culture_test = train_test_split(X_gangwon_culture , y_gangwon_culture , test_size = 0.2 , random_state = 20)
lr12 = linear_model.LinearRegression()
model12 = lr12.fit(X_gangwon_culture_train , y_gangwon_culture_train)

#강원도 예측
# food 예측 학습한 데이터를 다른 데이터로 평가하는 것 예측 테스트(X축에는 예측할 데이터, Y축에는 예측에 고려할 데이터)
X_gangwon_food = gangwon_food[gangwon_food.columns.difference(['식음료'])]
y_gangwon_food = gangwon_food['식음료']
X_gangwon_food_train , X_gangwon_food_test , y_gangwon_food_train , y_gangwon_food_test = train_test_split(X_gangwon_food , y_gangwon_food , test_size = 0.2 , random_state = 20)
lr13 = linear_model.LinearRegression()
model13 = lr13.fit(X_gangwon_food_train , y_gangwon_food_train)
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

# 스케일링된 데이터 출력
print(gangwon_practice_scaled)

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

# 결과 출력
predict



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

predict

# 콘도 예측 결과치
X_practice_condo = X[gangwon_condo.columns.difference(['콘도'])]
predict_condo = lr2.predict(X_practice_condo)
predict_condo = np.round(predict_condo, decimals=1)
predict_condo[predict_condo < 0] = -predict_condo[predict_condo < 0]

predict = pd.DataFrame(predict_condo, columns=['2023년 강원도 콘도 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 콘도 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_condo_23_jan=predict_condo[0]
g_condo_23_feb=predict_condo[1]
g_condo_23_mar=predict_condo[2]
g_condo_23_apr=predict_condo[3]
g_condo_23_may=predict_condo[4]
g_condo_23_jun=predict_condo[5]
g_condo_23_jul=predict_condo[6]
g_condo_23_aug=predict_condo[7]
g_condo_23_sep=predict_condo[8]
g_condo_23_oct=predict_condo[9]
g_condo_23_nov=predict_condo[10]
g_condo_23_dec=predict_condo[11]


# 캠핑장 예측 결과치
X_practice_camping = X[gangwon_camping.columns.difference(['캠핑장/펜션'])]
predict_camping = lr3.predict(X_practice_camping)
predict_camping = np.round(predict_camping, decimals=1)
predict_camping[predict_camping < 0] = -predict_camping[predict_camping < 0]

predict = pd.DataFrame(predict_camping, columns=['2023년 강원도 캠핑장 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 캠핑장 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_camping_23_jan=predict_camping[0]
g_camping_23_feb=predict_camping[1]
g_camping_23_mar=predict_camping[2]
g_camping_23_apr=predict_camping[3]
g_camping_23_may=predict_camping[4]
g_camping_23_jun=predict_camping[5]
g_camping_23_jul=predict_camping[6]
g_camping_23_aug=predict_camping[7]
g_camping_23_sep=predict_camping[8]
g_camping_23_oct=predict_camping[9]
g_camping_23_nov=predict_camping[10]
g_camping_23_dec=predict_camping[11]


# 기타숙박 예측 결과치
X_practice_elsesleep = X[gangwon_elsesleep.columns.difference(['기타숙박'])]
predict_elsesleep = lr4.predict(X_practice_elsesleep)
predict_elsesleep = np.round(predict_elsesleep, decimals=1)
predict_elsesleep[predict_elsesleep < 0] = -predict_elsesleep[predict_elsesleep < 0]

predict = pd.DataFrame(predict_elsesleep, columns=['2023년 강원도 기타숙박 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 기타숙박 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_elsesleep_23_jan=predict_elsesleep[0]
g_elsesleep_23_feb=predict_elsesleep[1]
g_elsesleep_23_mar=predict_elsesleep[2]
g_elsesleep_23_apr=predict_elsesleep[3]
g_elsesleep_23_may=predict_elsesleep[4]
g_elsesleep_23_jun=predict_elsesleep[5]
g_elsesleep_23_jul=predict_elsesleep[6]
g_elsesleep_23_aug=predict_elsesleep[7]
g_elsesleep_23_sep=predict_elsesleep[8]
g_elsesleep_23_oct=predict_elsesleep[9]
g_elsesleep_23_nov=predict_elsesleep[10]
g_elsesleep_23_dec=predict_elsesleep[11]

# 면세점 예측 결과치
X_practice_dutyfree = X[gangwon_dutyfree.columns.difference(['면세점'])]
predict_dutyfree = lr5.predict(X_practice_dutyfree)
predict_dutyfree = np.round(predict_dutyfree, decimals=1)
predict_dutyfree[predict_dutyfree < 0] = -predict_dutyfree[predict_dutyfree < 0]

predict = pd.DataFrame(predict_dutyfree, columns=['2023년 강원도 면세점 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 면세점 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_dutyfree_23_jan=predict_dutyfree[0]
g_dutyfree_23_feb=predict_dutyfree[1]
g_dutyfree_23_mar=predict_dutyfree[2]
g_dutyfree_23_apr=predict_dutyfree[3]
g_dutyfree_23_may=predict_dutyfree[4]
g_dutyfree_23_jun=predict_dutyfree[5]
g_dutyfree_23_jul=predict_dutyfree[6]
g_dutyfree_23_aug=predict_dutyfree[7]
g_dutyfree_23_sep=predict_dutyfree[8]
g_dutyfree_23_oct=predict_dutyfree[9]
g_dutyfree_23_nov=predict_dutyfree[10]
g_dutyfree_23_dec=predict_dutyfree[11]

# 레저용품쇼핑 예측 결과치
X_practice_leisureshop = X[gangwon_leisureshop.columns.difference(['레저용품쇼핑'])]
predict_leisureshop = lr6.predict(X_practice_leisureshop)
predict_leisureshop = np.round(predict_leisureshop, decimals=1)
predict_leisureshop[predict_leisureshop < 0] = -predict_leisureshop[predict_leisureshop < 0]

predict = pd.DataFrame(predict_leisureshop, columns=['2023년 강원도 레저용품쇼핑 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 레저용품쇼핑 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_leisureshop_23_jan=predict_leisureshop[0]
g_leisureshop_23_feb=predict_leisureshop[1]
g_leisureshop_23_mar=predict_leisureshop[2]
g_leisureshop_23_apr=predict_leisureshop[3]
g_leisureshop_23_may=predict_leisureshop[4]
g_leisureshop_23_jun=predict_leisureshop[5]
g_leisureshop_23_jul=predict_leisureshop[6]
g_leisureshop_23_aug=predict_leisureshop[7]
g_leisureshop_23_sep=predict_leisureshop[8]
g_leisureshop_23_oct=predict_leisureshop[9]
g_leisureshop_23_nov=predict_leisureshop[10]
g_leisureshop_23_dec=predict_leisureshop[11]

# 대형쇼핑몰 예측 결과치
X_practice_hugeshop = X[gangwon_hugeshop.columns.difference(['대형쇼핑몰'])]
predict_hugeshop = lr7.predict(X_practice_hugeshop)
predict_hugeshop = np.round(predict_hugeshop, decimals=1)
predict_hugeshop[predict_hugeshop < 0] = -predict_hugeshop[predict_hugeshop < 0]

predict = pd.DataFrame(predict_hugeshop, columns=['2023년 강원도 대형쇼핑몰 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 대형쇼핑몰 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_hugeshop_23_jan=predict_hugeshop[0]
g_hugeshop_23_feb=predict_hugeshop[1]
g_hugeshop_23_mar=predict_hugeshop[2]
g_hugeshop_23_apr=predict_hugeshop[3]
g_hugeshop_23_may=predict_hugeshop[4]
g_hugeshop_23_jun=predict_hugeshop[5]
g_hugeshop_23_jul=predict_hugeshop[6]
g_hugeshop_23_aug=predict_hugeshop[7]
g_hugeshop_23_sep=predict_hugeshop[8]
g_hugeshop_23_oct=predict_hugeshop[9]
g_hugeshop_23_nov=predict_hugeshop[10]
g_hugeshop_23_dec=predict_hugeshop[11]

# 관광유원시설 예측 결과치
X_practice_amuse = X[gangwon_amuse.columns.difference(['관광유원시설'])]
predict_amuse = lr8.predict(X_practice_amuse)
predict_amuse = np.round(predict_amuse, decimals=1)
predict_amuse[predict_amuse < 0] = -predict_amuse[predict_amuse < 0]

predict = pd.DataFrame(predict_amuse, columns=['2023년 강원도 관광유원시설 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 관광유원시설 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_amuse_23_jan=predict_amuse[0]
g_amuse_23_feb=predict_amuse[1]
g_amuse_23_mar=predict_amuse[2]
g_amuse_23_apr=predict_amuse[3]
g_amuse_23_may=predict_amuse[4]
g_amuse_23_jun=predict_amuse[5]
g_amuse_23_jul=predict_amuse[6]
g_amuse_23_aug=predict_amuse[7]
g_amuse_23_sep=predict_amuse[8]
g_amuse_23_oct=predict_amuse[9]
g_amuse_23_nov=predict_amuse[10]
g_amuse_23_dec=predict_amuse[11]

# 골프장 예측 결과치
X_practice_golf = X[gangwon_golf.columns.difference(['골프장'])]
predict_golf = lr9.predict(X_practice_golf)
predict_golf = np.round(predict_golf, decimals=1)
predict_golf[predict_golf < 0] = -predict_golf[predict_golf < 0]

predict = pd.DataFrame(predict_golf, columns=['2023년 강원도 골프장 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 골프장 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_golf_23_jan=predict_golf[0]
g_golf_23_feb=predict_golf[1]
g_golf_23_mar=predict_golf[2]
g_golf_23_apr=predict_golf[3]
g_golf_23_may=predict_golf[4]
g_golf_23_jun=predict_golf[5]
g_golf_23_jul=predict_golf[6]
g_golf_23_aug=predict_golf[7]
g_golf_23_sep=predict_golf[8]
g_golf_23_oct=predict_golf[9]
g_golf_23_nov=predict_golf[10]
g_golf_23_dec=predict_golf[11]

# 스키장 예측 결과치
X_practice_ski = X[gangwon_ski.columns.difference(['스키장'])]
predict_ski = lr10.predict(X_practice_ski)
predict_ski = np.round(predict_ski, decimals=1)
predict_ski[predict_ski < 0] = -predict_ski[predict_ski < 0]

predict = pd.DataFrame(predict_ski, columns=['2023년 강원도 스키장 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 스키장 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_ski_23_jan=predict_ski[0]
g_ski_23_feb=predict_ski[1]
g_ski_23_mar=predict_ski[2]
g_ski_23_apr=predict_ski[3]
g_ski_23_may=predict_ski[4]
g_ski_23_jun=predict_ski[5]
g_ski_23_jul=predict_ski[6]
g_ski_23_aug=predict_ski[7]
g_ski_23_sep=predict_ski[8]
g_ski_23_oct=predict_ski[9]
g_ski_23_nov=predict_ski[10]
g_ski_23_dec=predict_ski[11]

# 문화서비스 예측 결과치
X_practice_culture = X[gangwon_culture.columns.difference(['문화서비스'])]
predict_culture = lr12.predict(X_practice_culture)
predict_culture = np.round(predict_culture, decimals=1)
predict_culture[predict_culture < 0] = -predict_culture[predict_culture < 0]

predict = pd.DataFrame(predict_culture, columns=['2023년 강원도 문화서비스 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 문화서비스 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_culture_23_jan=predict_culture[0]
g_culture_23_feb=predict_culture[1]
g_culture_23_mar=predict_culture[2]
g_culture_23_apr=predict_culture[3]
g_culture_23_may=predict_culture[4]
g_culture_23_jun=predict_culture[5]
g_culture_23_jul=predict_culture[6]
g_culture_23_aug=predict_culture[7]
g_culture_23_sep=predict_culture[8]
g_culture_23_oct=predict_culture[9]
g_culture_23_nov=predict_culture[10]
g_culture_23_dec=predict_culture[11]

# 식음료 예측 결과치
X_practice_food = X[gangwon_food.columns.difference(['식음료'])]
predict_food = lr13.predict(X_practice_food)
predict_food = np.round(predict_food, decimals=1)
predict_food[predict_food < 0] = -predict_food[predict_food < 0]

predict = pd.DataFrame(predict_food, columns=['2023년 강원도 식음료 소비 예측치'], index=gangwon_practice.index)
predict.columns = ['2023년 강원도 식음료 소비 예측치']

# 1월 ~ 12월 예측 데이터 각 변수에 저장
g_food_23_jan=predict_food[0]
g_food_23_feb=predict_food[1]
g_food_23_mar=predict_food[2]
g_food_23_apr=predict_food[3]
g_food_23_may=predict_food[4]
g_food_23_jun=predict_food[5]
g_food_23_jul=predict_food[6]
g_food_23_aug=predict_food[7]
g_food_23_sep=predict_food[8]
g_food_23_oct=predict_food[9]
g_food_23_nov=predict_food[10]
g_food_23_dec=predict_food[11]

