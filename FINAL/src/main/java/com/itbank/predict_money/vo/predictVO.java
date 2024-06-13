package com.itbank.predict_money.vo;

public class predictVO {
	private String predict_month;
	private double predict_value;
	
	
	public String getPredict_month() {
		return predict_month;
	}
	public void setPredict_month(String predict_month) {
		this.predict_month = predict_month;
	}
	public double getPredict_value() {
		return predict_value;
	}
	public void setPredict_value(double predict_value) {
		this.predict_value = predict_value;
	}




	@Override
	public String toString() {
		return String.format("%s : %.1f\n", predict_month, predict_value);
	}
	
	
}
