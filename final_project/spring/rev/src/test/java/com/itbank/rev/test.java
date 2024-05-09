package com.itbank.rev;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.junit.Test;

import com.itbank.model.vo.AreaVO;

public class test {

	@Test
	public int test(AreaVO input) throws IOException, InterruptedException {
		        String area = input.getArea();
		        String goal = input.getGoal();
		        String month = input.getMonth();
		        String night = input.getNight();
		        String nightplace = input.getNightplace();
		        String food = input.getFood();

		        // 파이썬 스크립트 실행하여 결과 받아오기
		            ProcessBuilder processBuilder = new ProcessBuilder("python", "C:\\Users\\wjaud\\OneDrive\\바탕 화면\\MOST IMPORTANT\\Jung_eun\\final_project\\springversion\\rev\\predict.py");
		            Process process = processBuilder.start();

		            InputStream inputStream = process.getInputStream();
		            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
		            StringBuilder result = new StringBuilder();
		            String line;
		            while ((line = reader.readLine()) != null) {
		                result.append(line).append("\n");
		            }

		            // 프로세스 종료 대기
		            int exitCode = process.waitFor();

		            // 결과를 원하는 형식으로 가공하여 활용
		            int pythonResult = Integer.parseInt(result.toString().trim());
		            int finalResult = pythonResult * 2; // 예시로 반환값을 2배로 만듦
		            System.out.println(finalResult);
		            return finalResult;
		}
}
