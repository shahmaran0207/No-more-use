package Service;

import java.util.Arrays;
import org.springframework.web.bind.annotation.RestController;
import com.itbank.model.vo.AreaVO;

@org.springframework.stereotype.Service
public class Service {
	
	public int money(AreaVO input) {
		
		int result = 1;

		String area = input.getArea();
		String goal = input.getGoal();
		String month = input.getMonth();
		String night = input.getNight();
		String nightplace = input.getNightplace();
		String food = input.getFood();

		String[] cities = { "강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", "대전광역시", "부산광역시", "서울특별시", "울산광역시", "인천광역시",
				"전라남도", "전라북도", "제주특별자치도", "충청남도", "충청북도" };

		for (String city : cities) {
			if (area.equals(city)) {
				result += 10;
				break;
			}
		}

		String[] nights = { "0일", "1일", "2일", "3일", "4일", "5일" };
		int index = Arrays.asList(nights).indexOf(night);
		if (index != -1)
			result *= index;

		String[] foods = { "0끼", "1끼", "2끼", "3끼", "4끼", "5끼", "6끼", "7끼", "8끼", "9끼", "10끼", "11끼", "12끼", "13끼",
				"14끼", "15끼" };

		int index_f = Arrays.asList(foods).indexOf(food);
		if (index_f != -1)
			result *= index_f;

		// 작업 수행

		return result;
	}
}