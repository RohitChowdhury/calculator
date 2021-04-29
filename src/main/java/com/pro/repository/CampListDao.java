package com.pro.repository;

import java.util.ArrayList;

import com.pro.model.DonationCamp;

public interface CampListDao {
	public ArrayList<DonationCamp> displayCampList() throws Exception;

	public int delete(int id) throws Exception;

}
