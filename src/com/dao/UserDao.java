package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.jdbc.JDBC;
import com.vo.User;

public class UserDao {
	public User selectByNamePass(String name,String password){
		User user=null;
		try {
			Connection con=JDBC.getConnection();
			String sql="select * from user where number=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				user=new User(rs.getInt("number"),rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;		
	}
	public int addUser(String number,String name,String password){
		int result=0;
		try {
			Connection con=JDBC.getConnection();
			String sql="insert into user(number,name,password) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(number));
			ps.setString(2, name);
			ps.setString(3, password);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
