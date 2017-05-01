package com.xanandu.pantudantu.userTask;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	@Override
	public void addUser(UserModel userModel) {
		userDao.addUser(userModel);
		
	}

	@Override
	public List<UserModel> listUser() {

		return userDao.listUser();
	}

	@Override
	public void deleteUser(int userId) {
		userDao.deleteUser(userId);
	}

	@Override
	public RoleModel userRoll(int userRoll) {
		// TODO Auto-generated method stub
		return userDao.userRoll(userRoll);
	}

	@Override
	public void addRoleModel(String role) {
		// TODO Auto-generated method stub
		 userDao.addRoleModel(role);
	}

	@Override
	public void addUserType(String usrType) {
		userDao.addUserType(usrType);
		
	}

}
