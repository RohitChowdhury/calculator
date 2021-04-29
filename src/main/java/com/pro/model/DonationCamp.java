package com.pro.model;


import javax.validation.constraints.Size;

public class DonationCamp {
	//@NotEmpty(message="Place cant be Empty")
	@Size(min = 3,message = "Enter al least 3 Character")
	private String place;
	private String date;
	private String organizer;
	private String organizerPhone;
	private int campId;

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public String getOrganizerPhone() {
		return organizerPhone;
	}

	public void setOrganizerPhone(String organizerPhone) {
		this.organizerPhone = organizerPhone;
	}

	public int getCampId() {
		return campId;
	}

	public void setCampId(int campId) {
		this.campId = campId;
	}
}
