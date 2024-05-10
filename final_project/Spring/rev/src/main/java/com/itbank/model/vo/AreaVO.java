package com.itbank.model.vo;


//String area=request.getParameter("area");
//String goal=request.getParameter("goal");
//String month=request.getParameter("month");
//String night=request.getParameter("night");
//String nightplace=request.getParameter("nightplace");
//String food=request.getParameter("food");

public class AreaVO {
	private int month, food, night;
	private String area, goal, nightplace;
    
//	public AreaVO (String area, String goal, int month, int night, String nightplace, int food) {
//		this.area=area;
//		this.goal=goal;
//		this.month=month;
//		this.night=night;
//		this.nightplace=nightplace;
//		this.food=food;
//	}

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

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getNight() {
		return night;
	}

	public void setNight(int night) {
		this.night = night;
	}

	public String getNightplace() {
		return nightplace;
	}

	public void setNightplace(String nightplace) {
		this.nightplace = nightplace;
	}

	public int getFood() {
		return food;
	}

	public void setFood(int food) {
		this.food = food;
	} 
	
	
}