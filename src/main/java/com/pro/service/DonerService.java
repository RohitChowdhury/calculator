package com.pro.service;

import java.sql.Connection;
import java.sql.Statement;

import com.pro.model.Doner;
import com.pro.repository.ConnectionHandler;
import com.pro.repository.DonerDao;

public class DonerService implements DonerDao {

	@Override
	public String addDoner(Doner doner) throws Exception {
		
		Connection connection = ConnectionHandler.getConnection();
		Statement statement = connection.createStatement();
		String donerName = doner.getName();
		String phone = doner.getPhone();
		String email = doner.getEmail();
		String bloodGroup = doner.getBlodGroup();
		String gender = doner.getGender();
		int registerCampId = doner.getRegisterCampId();
		statement.executeUpdate("insert into doner" + "(doner_name,gender,phone,email_id,blood_group,camp_id)"
				+ "values" + "('" + donerName + "','" + gender + "','" + phone + "','" + email + "','" + bloodGroup
				+ "','" + registerCampId + "')");
		String result = "You Registered Succesfully !";
		return result;

	}
	
/*	@Autowired
	DonerDao donerDao;
	public String addDonerService(Doner doner) throws Exception {
		String result= donerDao.addDoner(doner);
		return result; 
	}*/

}
