package com.company.dao;

public class Query {
	
	static String query1 = "SELECT * FROM student WHERE sname = ? AND password = ?";
	static String insert = "INSERT INTO student (sname, semail, password) VALUES (?, ?, ?)";
	
}
