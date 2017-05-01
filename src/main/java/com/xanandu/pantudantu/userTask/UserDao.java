package com.xanandu.pantudantu.userTask;

import java.util.List;

import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;


public interface UserDao {

	public void addUser(UserModel userModel);
	public List<UserModel> listUser();
	public void deleteUser(int userId);
	//public List<UserModel>getModeratorList();
	
	public RoleModel userRoll(int userRoll);
	public UserModel getUserById(int id);
	
	public void addRoleModel(String role);
	public void addUserType(String usrType);
	
}
