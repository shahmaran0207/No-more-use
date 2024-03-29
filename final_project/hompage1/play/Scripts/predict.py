# predict.py

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression

# 데이터 불러오기
data = pd.read_excel("C:\Users\wjaud\OneDrive\바탕 화면\졸업작품\데이터\최종데이터.xlsx")

# 월을 숫자로 변환
data['월'] = pd.to_datetime(data['월'], format='%Y년 %m월').dt.month

# 학습 데이터와 테스트 데이터로 나누기
X = data[['시도구분', '월']]
y = data['호텔']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 선형 회귀 모델 생성 및 학습
model = LinearRegression()
model.fit(X_train, y_train)

# 월별 예측
months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
predictions = []

for month in months:
    prediction = model.predict([[1, month]])  # 1은 경기도에 해당하는 시도구분
    predictions.append(int(prediction[0]))

# 결과 출력
for month, prediction in zip(months, predictions):
    print(f"{month}월 예측: {prediction}")
