package com.xanandu.pantudantu.userPermission;

import java.util.List;

import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.PermissionTypeId;

public interface UserPermissionService {

	public void  savePemission(Permission p);
	public List<PermissionTypeId> getPermissionList();
	public void deleteUSerPermission(int parseInt);
	public List<Permission> getListOfUserPermission(String id);
	
	public void addPermissionTypeId(String permissionTypeId);
}
