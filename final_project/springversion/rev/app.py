from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/get_prediction', methods=['GET'])
def get_prediction():
    # Python 코드 실행 및 결과 얻기
    prediction_result = {'variable1': value1, 'variable2': value2}  # 예시 결과

    return jsonify(prediction_result)

if __name__ == '__main__':
    app.run(debug=True)
