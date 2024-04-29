package com.itbank.model.vo;

public class predictVO {
	private String date;
	private double predict;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getPredict() {
		return predict;
	}
	public void setPredict(double predict) {
		this.predict = predict;
	}
	
	@Override
	public String toString() {
		return String.format("%s : %.1f\n", date, predict);
	}
	
	
}
