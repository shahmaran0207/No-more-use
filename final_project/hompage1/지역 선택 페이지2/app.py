from flask import Flask, request, render_template

app = Flask(__name__)

# 여행 목적, 지역, 월, 숙박 여부에 따른 가중치 설정
weights = {
    "purpose": {
        "레젌루어": 1.0,
        "자연/풍경 감상": 1.2,
        "문화/예술 감상": 1.1,
        "쇼핑": 1.3,
        "레젌루어": 1.0,
    },
    "region": {
        "강원도": 1.1,
        "경기도": 1.2,
        "경상남도": 1.0,
        "경상북도": 1.0,
        "광주광역시": 1.0,
        "대구광역시": 1.1,
        "대전광역시": 1.0,
        "부산광역시": 1.2,
        "서울특별시": 1.4,
        "울산광역시": 1.0,
        "인천광역시": 1.2,
        "전라남도": 1.0,
        "전라북도": 1.0,
        "제주특별자치도": 1.3,
        "충청남도": 1.0,
        "충청북도": 1.0,
    },
    "month": {
        "01월": 1.1,
        "02월": 1.0,
        "03월": 1.0,
        "04월": 1.0,
        "05월": 1.0,
        "06월": 1.0,
        "07월": 1.2,
        "08월": 1.3,
        "09월": 1.1,
        "10월": 1.0,
        "11월": 1.0,
        "12월": 1.0,
    },
    "accommodation": {
        "숙박": 1.3,
        "숙박 아님": 1.0,
    },
    # 나머지 선택지에 대한 가중치도 여기에 추가
}

# 실제 데이터 (앞서 제공한 데이터를 여기에 추가)

@app.route('/', methods=['GET', 'POST'])
def calculate_budget():
    if request.method == 'POST':
        # 사용자 입력 받기
        purpose = request.form.get('purpose')
        region = request.form.get('region')
        month = request.form.get('month')
        accommodation = request.form.get('accommodation')
        
        # 선택된 옵션에 따른 가중치 가져오기
        purpose_weight = weights['purpose'].get(purpose, 1.0)
        region_weight = weights['region'].get(region, 1.0)
        month_weight = weights['month'].get(month, 1.0)
        accommodation_weight = weights['accommodation'].get(accommodation, 1.0)
        
        # 여행 예산 계산 (여기에 데이터와 계산을 추가)
        total_budget = 0  # 실제 계산 부분은 데이터와 계산 공식에 따라 채워야 합니다.
        
        # 결과 HTML 템플릿에 전달
        return render_template('result.html', total_budget=total_budget)

    return render_template('index.html')

if __name__ == '__main__':
    app.run()
