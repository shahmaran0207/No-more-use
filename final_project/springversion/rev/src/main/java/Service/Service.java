package Service;

import com.itbank.model.vo.AreaVO;

@org.springframework.stereotype.Service
public class Service {
    public int money(AreaVO input) {
        String area = input.getArea();
        String goal = input.getGoal();
        String month = input.getMonth();
        String night = input.getNight();
        String nightplace = input.getNightplace();
        String food = input.getFood();
        
        
        return 1;
    }
    
    
   }
