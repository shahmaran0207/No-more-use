package com.itbank.model.vo;


//String area=request.getParameter("area");
//String goal=request.getParameter("goal");
//String month=request.getParameter("month");
//String night=request.getParameter("night");
//String nightplace=request.getParameter("nightplace");
//String food=request.getParameter("food");

public class AreaVO {
	private String area, goal, month, night, nightplace, food;
    
	public AreaVO (String area, String goal, String month, String night, String nightplace, String food) {
		this.area=area;
		this.goal=goal;
		this.month=month;
		this.night=night;
		this.nightplace=nightplace;
		this.food=food;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getNight() {
		return night;
	}

	public void setNight(String night) {
		this.night = night;
	}

	public String getNightplace() {
		return nightplace;
	}

	public void setNightplace(String nightplace) {
		this.nightplace = nightplace;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	} 
	
	
}