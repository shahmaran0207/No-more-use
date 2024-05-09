package Service;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.model.vo.predictVO;

public class jythonpy {
	public static void main(String[] args) throws IOException {
		// 파이썬 스크립트 실행하여 결과 받아오기
		File f = new File("src\\main\\java\\Service\\script.py");
		String cmd = "python " + f.toString();

		List<String> list = Arrays.asList(cmd.split(" "));

		ProcessBuilder processBuilder = new ProcessBuilder(list);
		Process process = processBuilder.start();

		String result = "";

		Scanner sc = new Scanner(process.getInputStream(), "MS949");

		while (sc.hasNext()) {
			result += sc.nextLine() + "\r\n";
		}

		sc.close();
		
		result = result.replaceAll("'", "").trim();
		result = result.subSequence(1, result.length() - 1).toString();
		System.out.println(result);
		
		ObjectMapper mapper = new ObjectMapper();
		List<predictVO> list2 = Arrays.asList(mapper.readValue(result, predictVO[].class));
//		System.out.println(list2);
		
		list2.forEach(System.out::println);
		

	}
}
