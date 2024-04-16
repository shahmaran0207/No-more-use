package Service;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MyService {

    public static void main(String[] args) throws IOException {
        // Python 스크립트 실행
        Process process = Runtime.getRuntime().exec("E:/12월 전자정부기반 e커머스 융합 sw개발자 박정은/Jung_eun/final_project/springversion/rev/predict.py");

        // Python 스크립트 실행 결과를 읽어옴
        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line;
        StringBuilder result = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            result.append(line);
        }

        // 결과 출력
        System.out.println("Python script executed with result: " + result.toString());
    }
}
