package Service;

import java.text.DecimalFormat;
import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import com.itbank.model.predictDAO;
import com.itbank.model.vo.AreaVO;
import com.itbank.model.vo.TableVO;

@org.springframework.stereotype.Service
public class Service {
	
	@Autowired
	private predictDAO dao;
	
	public String money(AreaVO input) {
		
		int result = 0;
		
		String area = input.getArea();
		String goal = input.getGoal();
		int month = input.getMonth();
		int night = input.getNight();
		String nightplace = input.getNightplace();
		int food = input.getFood();
		
		// 각 항목 테이블
		String tb_nightplace = "";
		String tb_goal = "";
		String tb_food = "";
		
		// 입력받은 값과 일치하는 숙박 테이블 명 정하기
		String[] cities = { "강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", "대전광역시", "부산광역시", "서울특별시", "울산광역시", "인천광역시",
				"전라남도", "전라북도", "제주특별자치도", "충청남도", "충청북도" };
		
		for(int i = 0; i < cities.length; i++) {
			if (area.equals(cities[i])) {
				switch (i) {
				case 0 : area = "gangwon";
						break;
				case 1 : area = "gunggi";
						break;
				case 2 : area = "gyungnam";
						break;
				case 3 : area = "gyungbuk";
						break;
				case 4 : area = "gangju";
						break;
				case 5 : area = "daegu";
						break;
				case 6 : area = "daejeon";
						break;
				case 7 : area = "busan";
						break;
				case 8 : area = "seoul";
						break;
				case 9 : area = "ulsan";
						break;
				case 10 : area = "incheon";
						break;
				case 11 : area = "jeonnam";
						break;
				case 12 : area = "jeonbuk";
						break;
				case 13 : area = "jeju";
						break;		
				case 14 : area = "chungnam";
						break;
				case 15 : area = "chungbuk";
						break;		
						
				}
				
			}
		}
		
		String [] nps =  { "호텔", "콘도", "캠핑장/펜션", "기타숙박" };
		
		for (int i = 0; i < nps.length; i++) {
			if (nightplace.equals(nps[i])) {
				switch (i) {
				case 0 : nightplace = "hotel";
					break;
				case 1 : nightplace = "condo";
					break;
				case 2 : nightplace = "camping";
					break;
				case 3 : nightplace = "elsesleep";
					break;

				}
			}
		}
		
		String [] goals = {"스키장", "문화서비스", "면세점", "레저용품쇼핑", "대형쇼핑몰", "관광유원시설", "골프장" };
		
		for(int i = 0; i < goals.length; i++) {
			if (goal.equals(goals[i])) {
				switch (i) {
				case 0 : goal = "ski";
						break;
				case 1 : goal = "culture";
						break;
				case 2 : goal = "dutyfree";
						break;
				case 3 : goal = "leisureshop";
						break;
				case 4 : goal = "hugeshop";
						break;
				case 5 : goal = "amuse";
						break;
				case 6 : goal = "golf";
						break;
				}
			}
		}
		
		
		
		// 각 테이블 바탕으로 예측값 산출
		TableVO tv = new TableVO();
		
		tb_nightplace = area + "_" + nightplace + "_24";
		
		tv.setTable_name(tb_nightplace);
		
		
		tv.setMonth(month);
		int pv_np = dao.search(tv) / 30;
		
		
		
		
		tb_goal = area + "_" + goal + "_24";
		tv.setTable_name(tb_goal);

		
		tv.setMonth(month);
		
		int pv_goal = dao.search(tv) / 30;
		
		
		
		tb_food = area + "_food_24";
		tv.setTable_name(tb_food);

		
		tv.setMonth(month);
		
		int pv_food = dao.search(tv) / 30;
		
		
		
		// 몇박 몇일에 맞게 숙박 예측값에 곱하기
		int[] nights = { 0, 1, 2, 3, 4, 5 };
		int index = Arrays.asList(nights).indexOf(night);
		if (index != -1)
			pv_np *= index;

		// 몇끼에 따른 식음료 예측값에 곱하기
		int[] foods = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };

		int index_f = Arrays.asList(foods).indexOf(food);
		if (index_f != -1)
			pv_food *= index_f;
		
		
		// 총 예측값
		result = pv_goal + pv_food + pv_np;
		
		// 한국 통화 단위로 포맷팅
		DecimalFormat decimalFormat = new DecimalFormat("###,###원");
		String formattedResult = decimalFormat.format(result);
		
		return formattedResult;
	}
			
}