package com.xanandu.pantudantu.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.UserModel;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao loginDao;
	@Override
	public UserDetails loadUserByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public UserModel getUserByUnamePassword(String userName, String password) {
		return loginDao.getUserByUnamePassword(userName, password);
	}
	@Override
	public void addUser(String userName, String password) {
		 loginDao.addUser(userName, password);
	}
	@Override
	public UserModel getUserByUname(String userName) {
		return loginDao.getUserByUname(userName);
	}
	public int addUserModerator(String userName, String password)
	{
	return loginDao.addUserModerator(userName, password);
		
	}
	@Override
	public List<UserModel> getfill() {
		// TODO Auto-generated method stub
		return loginDao.getfill();
	}
	@Override
	public void update(String un,String pw,int pri) {
		// TODO Auto-generated method stub
		
	loginDao.update(un,pw,pri);
	
	}
	@Override
	public List<UserModel> getUserList() {
		return loginDao.getUserList();
	}
	@Override
	public UserModel getuserById(int id) {
		// TODO Auto-generated method stub
		return loginDao.getuserById(id);
	}
	
	

}
