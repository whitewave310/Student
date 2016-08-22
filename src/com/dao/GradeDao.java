package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jdbc.JDBC;
import com.vo.Grade;
import com.vo.User;

public class GradeDao {
	public Grade selectByNum(String number){
		Grade grade=null;
		try {
			Connection con=JDBC.getConnection();
			String sql="select * from grade where number=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(number));
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				grade=new Grade(rs.getInt("number"), rs.getString("name"), rs.getInt("ugrade1"), rs.getInt("ugrade2"),rs.getInt("ugrade3"), rs.getInt("ugrade4"), rs.getInt("egrade1"), rs.getInt("egrade2"),rs.getInt("grade"), rs.getInt("tgrade"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return grade;		
	}
	public ArrayList<Grade> selectAllGrade(){
		ArrayList<Grade> gradeList=new ArrayList<Grade>();
		try {
			Connection con=JDBC.getConnection();
			String sql="select * from grade";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Grade grade=new Grade(rs.getInt("number"), rs.getString("name"), rs.getInt("ugrade1"), rs.getInt("ugrade2"),rs.getInt("ugrade3"), rs.getInt("ugrade4"), rs.getInt("egrade1"), rs.getInt("egrade2"),rs.getInt("grade"), rs.getInt("tgrade"));
				gradeList.add(grade);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gradeList;		
	}
	public int insertGrade(Integer number, String name, Integer ugrade1, Integer ugrade2,Integer ugrade3, Integer ugrade4, Integer egrade1, Integer egrade2,Integer grade, Integer tgrade){
		int result=0;
		try {
			Connection con=JDBC.getConnection();
			String sql="insert into grade(number, name, ugrade1, ugrade2,ugrade3, ugrade4, egrade1, egrade2,grade,tgrade) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,number);
			ps.setString(2,name);
			ps.setInt(3,ugrade1);
			ps.setInt(4,ugrade2);
			ps.setInt(5,ugrade3);
			ps.setInt(6,ugrade4);
			ps.setInt(7,egrade1);
			ps.setInt(8,egrade2);
			ps.setInt(9, grade);
			ps.setInt(9, grade);
			ps.setInt(10, tgrade);
			
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
		}
	public int deleteGrade(String number){
		int result=0;
		try {
			Connection con=JDBC.getConnection();	
			String sql="delete from grade where number=?";
			PreparedStatement ps=con.prepareStatement(sql);	
			ps.setInt(1, Integer.parseInt(number));
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int updateGrade(Integer number, String name,Integer ugrade1, Integer ugrade2,Integer ugrade3, Integer ugrade4, Integer egrade1, Integer egrade2,Integer grade, Integer tgrade){
		int result=0;
		try {
			Connection con=JDBC.getConnection();
			String sql="update grade set number=?,name=?,ugrade1=?, ugrade2=?,ugrade3=?, ugrade4=?, egrade1=?, egrade2=?,grade=?,tgrade=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,number);
			ps.setString(2,name);
			ps.setInt(3,ugrade1);
			ps.setInt(4,ugrade2);
			ps.setInt(5,ugrade3);
			ps.setInt(6,ugrade4);
			ps.setInt(7,egrade1);
			ps.setInt(8,egrade2);
			ps.setInt(9, grade);
			ps.setInt(9, grade);
			ps.setInt(10, tgrade);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
