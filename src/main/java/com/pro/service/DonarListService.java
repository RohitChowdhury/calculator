package com.pro.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.pro.model.Doner;
import com.pro.repository.ConnectionHandler;
import com.pro.repository.DonerListDao;

public class DonarListService implements DonerListDao{

	@Override
	public ArrayList<Doner> displayDonerList() throws Exception {
		Connection connection = ConnectionHandler.getConnection();
		Statement statement = connection.createStatement();
		ArrayList<Doner> donerList = new ArrayList<Doner>();
		ResultSet rs = statement.executeQuery("select * from doner");
		while (rs.next()) {
			Doner doner = new Doner();
			doner.setName(rs.getString("doner_name"));
			doner.setBlodGroup(rs.getString("blood_group"));
			doner.setGender(rs.getString("gender"));
			doner.setPhone(rs.getString("phone"));
			doner.setEmail(rs.getString("email_id"));
			doner.setRegisterCampId(rs.getInt("camp_id"));
			doner.setDonerId(rs.getInt("doner_id"));
			donerList.add(doner);
		}
		return donerList;
	}

}
