function showNumber(outputId) {
    var number = document.getElementById(outputId);
    var inputId = "numberInput" + outputId.slice(6);
    var inputValue = document.getElementById(inputId).value;
    number.textContent = inputValue;
}

function showNumber() {
    // 입력한 숫자를 가져옵니다.
    var number = document.getElementById("numberInput").value;

    // 결과를 출력할 요소를 가져옵니다.
    var outputElement = document.getElementById("output");

    // 결과를 출력합니다.
    outputElement.textContent = number;
}

function showNumber1() {
    // 입력한 숫자를 가져옵니다.
    var number = document.getElementById("numberInput1").value;

    // 결과를 출력할 요소를 가져옵니다.
    var outputElement = document.getElementById("output1");

    // 결과를 출력합니다.
    outputElement.textContent = number;
}

function showNumber3(outputId) {
    var number = document.getElementById(outputId);
    var inputId = "numberInput3" + outputId.slice(6);
    var inputValue = document.getElementById(inputId).value;
    number.textContent = inputValue;
}

function showNumber4(outputId) {
    var number = document.getElementById(outputId);
    var inputId = "numberInput4" + outputId.slice(6);
    var inputValue = document.getElementById(inputId).value;
    number.textContent = inputValue;
}

function showNumber4() {
    // 입력한 숫자를 가져옵니다.
    var number = document.getElementById("numberInput4").value;

    // 결과를 출력할 요소를 가져옵니다.
    var outputElement = document.getElementById("output4");

    // 결과를 출력합니다.
    outputElement.textContent = number;
}

function showNumber3() {
    // 입력한 숫자를 가져옵니다.
    var number = document.getElementById("numberInput3").value;

    // 결과를 출력할 요소를 가져옵니다.
    var outputElement = document.getElementById("output3");

    // 결과를 출력합니다.
    outputElement.textContent = number;
}

function showNumber5(outputId) {
    var number = document.getElementById(outputId);
    var inputId = "numberInput5" + outputId.slice(6);
    var inputValue = document.getElementById(inputId).value;
    number.textContent = inputValue;
}

function showNumber5() {
    // 입력한 숫자를 가져옵니다.
    var number = document.getElementById("numberInput5").value;

    // 결과를 출력할 요소를 가져옵니다.
    var outputElement = document.getElementById("output5");

    // 결과를 출력합니다.
    outputElement.textContent = number;
}

function showNumber1(outputId) {
    var number = document.getElementById(outputId);
    var inputId = "numberInput1" + outputId.slice(6);
    var inputValue = document.getElementById(inputId).value;
    number.textContent = inputValue;
}

function scrollToFeature() {
    var targetSection = document.querySelector("#feature");

    if (targetSection) {
        targetSection.scrollIntoView({ behavior: 'smooth' });
    }
}


    // 선택한 여행 목적을 저장할 변수
    let selectedPurpose = "";

    // 골프를 선택한 경우
    function selectGolf() {
        selectedPurpose = "골프";
    }

    // 스키를 선택한 경우
    function selectSki() {
        selectedPurpose = "스키";
    }

    // 관광유원을 선택한 경우
    function selectPark() {
        selectedPurpose = "관광유원";
    }

    // 기타 레저를 선택한 경우
    function selectLeisure() {
        selectedPurpose = "기타레저";
    }

    // 최종 제출 버튼 클릭 시 실행되는 함수
    function submitData() {
        // 선택한 여행 목적을 서버에 전달하는 AJAX 요청
        // 이 부분을 실제 서버로의 요청으로 대체해야 합니다.
        // 여기서는 간단히 콘솔에 출력하는 것으로 대체합니다.
        console.log("선택한 여행 목적:", selectedPurpose);

        // 이후에 서버로 데이터를 전송하는 로직을 추가해야 합니다.
    }