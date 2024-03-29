from flask import Flask, render_template, request

app = Flask(__name__)

def calculate_budget(budget):
    # 여행 예산 계산 로직을 추가
    # 이 예제에서는 입력된 예산을 그대로 반환합니다.
    return budget

@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        # 사용자가 양식을 제출하면 여행 예산을 계산하고 결과 페이지로 리디렉션
        budget = float(request.form.get("budget"))
        calculated_budget = calculate_budget(budget)
        return render_template("result.html", budget=calculated_budget)
    # GET 요청인 경우, 입력 폼을 표시
    return render_template("input_form.html")

if __name__ == "__main__":
    app.run(debug=True)
