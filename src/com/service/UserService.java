package com.service;

import com.dao.UserDao;
import com.vo.User;

public class UserService {
	public boolean login(String name,String password){
		boolean result=false;
		UserDao userdao=new UserDao();
		User user=userdao.selectByNamePass(name, password);
		if(user!=null){
			result=true;
		}
		return result;
	}
	public boolean register(String number,String name,String password){
		boolean result=false;
		UserDao userdao=new UserDao();
		int num=userdao.addUser(number, name, password);		
		if(num>=1){
			result=true;
		}
		return result;
	}
}
