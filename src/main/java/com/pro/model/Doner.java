package com.pro.model;

import javax.validation.constraints.Size;

public class Doner {
	@Size(min = 3,message = "Minimum 3")
	
	private String name;
	private String phone;
	private String email;
	private String blodGroup;
	private int registerCampId;
	public String gender;
	private int donerId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBlodGroup() {
		return blodGroup;
	}

	public void setBlodGroup(String blodGroup) {
		this.blodGroup = blodGroup;
	}

	public int getRegisterCampId() {
		return registerCampId;
	}

	public void setRegisterCampId(int registerCampId) {
		this.registerCampId = registerCampId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getDonerId() {
		return donerId;
	}

	public void setDonerId(int donerId) {
		this.donerId = donerId;
	}


}
