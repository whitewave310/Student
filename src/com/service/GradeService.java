package com.service;

import java.util.ArrayList;
import java.util.List;

import com.dao.GradeDao;
import com.vo.Grade;

public class GradeService {
	public Grade selectGradeByNumber(String number){
		Grade grade=null;
		try{
			GradeDao gradeDao=new GradeDao();
			grade=gradeDao.selectByNum(number);
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return grade;
	}
	public ArrayList<Grade> getAllGrade(){
		ArrayList<Grade> gradeList=null;
		try{
			GradeDao gradeDao=new GradeDao();
			gradeList=gradeDao.selectAllGrade();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gradeList;
	}
	public boolean addGrade(String number, String name, String ugrade1, String ugrade2,String ugrade3, String ugrade4, String egrade1, String egrade2,String grade){
		boolean result=false;
		try{
			Integer intnumber=Integer.parseInt(number);
			Integer intugrade1=Integer.parseInt(ugrade1);
			Integer intugrade2=Integer.parseInt(ugrade2);
			Integer intugrade3=Integer.parseInt(ugrade3);
			Integer intugrade4=Integer.parseInt(ugrade4);
			Integer integrade1=Integer.parseInt(egrade1);
			Integer integrade2=Integer.parseInt(egrade2);
			Integer intgrade=Integer.parseInt(grade);
			Integer tgrade=(int) ((intugrade1+intugrade2+intugrade3+intugrade4)*0.1+(integrade1+integrade2)*0.2+intgrade*0.7);
			GradeDao gradeDao=new GradeDao();
			gradeDao.insertGrade(intnumber, name, intugrade1, intugrade2, intugrade3, intugrade4, integrade1, integrade2, intgrade, tgrade);
			result=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	public boolean deleteGrade(String number){
		boolean result=false;
		try{
			GradeDao gradeDao=new GradeDao();
			gradeDao.deleteGrade(number);
			result=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	public boolean editGrade(String number, String name,String ugrade1, String ugrade2,String ugrade3, String ugrade4, String egrade1, String egrade2,String grade){
		boolean result=false;
		try{
			Integer intnumber=Integer.parseInt(number);
			Integer intugrade1=Integer.parseInt(ugrade1);
			Integer intugrade2=Integer.parseInt(ugrade2);
			Integer intugrade3=Integer.parseInt(ugrade3);
			Integer intugrade4=Integer.parseInt(ugrade4);
			Integer integrade1=Integer.parseInt(egrade1);
			Integer integrade2=Integer.parseInt(egrade2);
			Integer intgrade=Integer.parseInt(grade);
			Integer tgrade=(int) ((intugrade1+intugrade2+intugrade3+intugrade4)*0.1+(integrade1+integrade2)*0.2+intgrade*0.7);
			GradeDao gradeDao=new GradeDao();
			gradeDao.updateGrade(intnumber, name,intugrade1, intugrade2, intugrade3, intugrade4, integrade1, integrade2, intgrade, tgrade);
			result=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}
