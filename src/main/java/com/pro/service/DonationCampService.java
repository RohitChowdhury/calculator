package com.pro.service;

import java.sql.Connection;
import java.sql.Statement;

import com.pro.model.DonationCamp;
import com.pro.repository.ConnectionHandler;
import com.pro.repository.DonationCampDao;

public class DonationCampService implements DonationCampDao {

	@Override
	public String addDonationCamp(DonationCamp donation) throws Exception {
		Connection connection=ConnectionHandler.getConnection();
		Statement statement = connection.createStatement();
		String place=donation.getPlace();
		String date=donation.getDate();
		String organizer=donation.getOrganizer();		
		String organizerPhn=donation.getOrganizerPhone();
		statement.executeUpdate("insert into donationCamp"+"(place,date,organizer,org_phone)"+
		"values"+"('"+place+"','"+date+"','"+organizer+"','"+organizerPhn+"')");
		String result="New Blood Donation Camp Entered Successfully !";
		return result;
	}

}
