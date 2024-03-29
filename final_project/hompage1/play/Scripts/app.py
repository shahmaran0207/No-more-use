from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    # 위의 예측 모델 코드를 이곳에 삽입하여 예측을 수행합니다.
    months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    predictions = [3749902, 1835721, 1789062, 1874121, 2107797, 1975469, 3440584, 5058850, 2403043, 2191968, 1688348, 4034537]  # 모델 예측 결과

    return render_template('index.html', months=months, predictions=predictions)

if __name__ == '__main__':
    app.run()
