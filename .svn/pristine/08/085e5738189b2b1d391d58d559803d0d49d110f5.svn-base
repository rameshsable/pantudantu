package com.xanandu.pantudantu.userPermission;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.PermissionTypeId;

@Service("UserPermissionService")
public class UserPermissionServiceImpl implements UserPermissionService {

	
	@Autowired
	UserPermissionDao userPermissiondao;
	@Override
	public void savePemission(Permission p) {
		
		
		userPermissiondao.savePemission( p);
		
	}
	@Override
	public List<PermissionTypeId> getPermissionList() {
		// TODO Auto-generated method stub
		return userPermissiondao.getPermissionList();
	}
	@Override
	public void deleteUSerPermission(int parseInt) {
		// TODO Auto-generated method stub
		 userPermissiondao.deleteUSerPermission(parseInt);
	}
	@Override
	public List<Permission> getListOfUserPermission(String id) {
		// TODO Auto-generated method stub
		return userPermissiondao.getListOfUserPermission(id);
	}
	@Override
	public void addPermissionTypeId(String permissionTypeId) {
		// TODO Auto-generated method stub
		userPermissiondao.addPermissionTypeId(permissionTypeId);
	}

	
}
