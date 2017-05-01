package com.xanandu.pantudantu.login;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.xanandu.pantudantu.model.UserModel;

public interface LoginDao {
	
	 public UserDetails loadUserByUsername(String username);
	 public UserModel getUserByUnamePassword(String username,String password);
	 public void addUser(String userName,String password);
	 public UserModel getUserByUname(String userName);
	 public int addUserModerator(String userName, String password);
	 public List<UserModel> getfill();
   	 public void update(String un,String pw,int pri);
     public UserModel getuserById(int id);
   	 
   	 public List<UserModel>getUserList(); 
} 
