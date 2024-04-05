package com.itbank.model.vo;

public class AreaVO {
    private String selectedRegion;
    private String selectedPurpose;
    private String selectedMonth;
    private int selectedAccommodation;
    private int selectedMeals;
    
    public AreaVO(String selectedRegion, String selectedPurpose, String selectedMonth, int selectedAccommodation, int selectedMeals) {
    	this.selectedAccommodation=selectedAccommodation;
    	this.selectedRegion=selectedRegion;
    	this.selectedMonth=selectedMonth;
    	this.selectedMeals=selectedMeals;
    }


    public String getSelectedRegion() {
		return selectedRegion;
	}
	public void setSelectedRegion(String selectedRegion) {
		this.selectedRegion = selectedRegion;
	}
	public String getSelectedPurpose() {
		return selectedPurpose;
	}
	public void setSelectedPurpose(String selectedPurpose) {
		this.selectedPurpose = selectedPurpose;
	}
	public String getSelectedMonth() {
		return selectedMonth;
	}
	public void setSelectedMonth(String selectedMonth) {
		this.selectedMonth = selectedMonth;
	}
	public int getSelectedAccommodation() {
		return selectedAccommodation;
	}
	public void setSelectedAccommodation(int selectedAccommodation) {
		this.selectedAccommodation = selectedAccommodation;
	}
	public int getSelectedMeals() {
		return selectedMeals;
	}
	public void setSelectedMeals(int selectedMeals) {
		this.selectedMeals = selectedMeals;
	}
}
