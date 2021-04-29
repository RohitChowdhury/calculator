package com.pro.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.pro.model.DonationCamp;
import com.pro.repository.CampListDao;
import com.pro.repository.ConnectionHandler;

public class CampListService implements CampListDao {

	@Override
	public ArrayList<DonationCamp> displayCampList() throws Exception {
		Connection connection = ConnectionHandler.getConnection();
		Statement statement = connection.createStatement();
		ArrayList<DonationCamp> camp = new ArrayList<DonationCamp>();
		ResultSet rs = statement.executeQuery("select * from donationCamp");
		while (rs.next()) {
			DonationCamp dCamp = new DonationCamp();
			dCamp.setCampId(rs.getInt("camp_id"));
			dCamp.setDate(rs.getString("date"));
			dCamp.setOrganizer(rs.getString("organizer"));
			dCamp.setPlace(rs.getString("place"));
			dCamp.setOrganizerPhone(rs.getString("org_phone"));
			camp.add(dCamp);

		}
		return camp;
	}

	@Override
	public int delete(int id) throws Exception {
		Connection connection = ConnectionHandler.getConnection();
		Statement statement = connection.createStatement();
		return statement.executeUpdate("delete from donationCamp" + " where camp_id =" + id + ";");
	}

}
