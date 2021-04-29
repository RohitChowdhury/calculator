package com.pro.repository;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionHandler {
	private static String dbUrl = "jdbc:mysql://127.0.0.1:3306/bloodDonation";
	private static String username = "student";
	private static String password = "student";

	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connection = DriverManager.getConnection(dbUrl, username, password);

		return connection;

	}
}
