package com.xanandu.pantudantu.setup;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xanandu.pantudantu.account.AccountService;
import com.xanandu.pantudantu.bill.BillService;
import com.xanandu.pantudantu.model.BillPayType;
import com.xanandu.pantudantu.model.ExpenseType;
import com.xanandu.pantudantu.model.Locality;
import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.PermissionTypeId;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.ServiceTax;
import com.xanandu.pantudantu.model.Status;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.UserPermissionType;
import com.xanandu.pantudantu.userPermission.UserPermissionService;
import com.xanandu.pantudantu.userTask.UserService;



@Repository("setupDao")
public class SetupDaoImpl implements SetupDao {

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private BillService billService ;
	@Autowired
	private AccountService accountService;
	@Autowired
	private UserService userService ;
	@Autowired
	private UserPermissionService permissionService;
	
	@Override
	public void addLocality() {
		
		System.out.println("nikkkk");

		InputStream fis = getClass().getResourceAsStream(
				"/com/xanandu/pantudantu/setup/city.csv");
		Locality locality;
		BufferedReader br = new BufferedReader(new InputStreamReader(fis));
		String str = "";
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Locality.class);
		if (criteria.list() == null || criteria.list().size() == 0) {

			try {
				while ((str = br.readLine()) != null) {
					try{
						String[] myArray = str.split(",");
						String areaname = myArray[0];
					locality= new Locality();
					locality.setName(areaname);
					session.save(locality);
					} catch (Exception e) {
					e.printStackTrace();
				}
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				session.close();
			}
		}

	
	}

	@Override
	public void createSetup() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(BillPayType.class);
		int billPayTypeSize=criteria.list().size();
		
		if(billPayTypeSize<=0){
			billService.addBillPayType("playZone");
			billService.addBillPayType("playrclimbing");
			billService.addBillPayType("rockwall");
			billService.addBillPayType("birthdaypackage");
			billService.addBillPayType("monthlypass");
			billService.addBillPayType("visitpass");	
		}
		
		
		
		criteria = session.createCriteria(ExpenseType.class);
		int expenseTypeSize=criteria.list().size();
		
		if(expenseTypeSize<=0){
			accountService.addNewExpenseType("Staff salary");
			accountService.addNewExpenseType("Staff welfare");
			accountService.addNewExpenseType("Rent");
			accountService.addNewExpenseType("Electricity");
			accountService.addNewExpenseType("Food charges");
			accountService.addNewExpenseType("Material");
			accountService.addNewExpenseType("Maintenance");
		}
		
		criteria = session.createCriteria(RoleModel  .class);
		int roleModelSize=criteria.list().size();
		if(roleModelSize<=0){
			userService.addRoleModel("admin");
			userService.addRoleModel("moderator");
		}
		
		criteria = session.createCriteria(UserPermissionType.class);
		int addUserTypelSize=criteria.list().size();
		
		if(addUserTypelSize<=0){
			userService.addUserType("admin");
			userService.addUserType("moderator");
			userService.addUserType("administrator");
		}
		
		criteria = session.createCriteria(PermissionTypeId.class);
		int permissionTypeIdSize=criteria.list().size();
		
		if(permissionTypeIdSize<=0){
			permissionService.addPermissionTypeId("CustomerRegistration");
			permissionService.addPermissionTypeId("UserLogin");
			permissionService.addPermissionTypeId("Feedback");
			permissionService.addPermissionTypeId("assignprice");
			permissionService.addPermissionTypeId("assignpass");
			permissionService.addPermissionTypeId("servicetax");
			permissionService.addPermissionTypeId("billing");
			permissionService.addPermissionTypeId("marketing");
			permissionService.addPermissionTypeId("accounts");
			permissionService.addPermissionTypeId("communicator");
			permissionService.addPermissionTypeId("advancebooking");
			permissionService.addPermissionTypeId("canclebooking");
		}
	
		criteria = session.createCriteria(UserModel.class);
		int userModelSize=criteria.list().size();
		if(userModelSize<=0){
			
			UserModel userModel=new UserModel();
			userModel.setActive(false);
			userModel.setPassword("admin");
			userModel.setUserName("admin");
			
			UserPermissionType permissionType =new UserPermissionType();
			permissionType.setId(1);
			userModel.setUserPermissionType(permissionType);
			
			RoleModel userRoll =new  RoleModel();
			userRoll.setId(1);
			userModel.setUserRoll(userRoll);
			
			userService.addUser(userModel);
		}
		
		criteria = session.createCriteria(Permission.class);
		int permissionSize=criteria.list().size();
		
		if(permissionSize<=0){
			UserModel userModel =new UserModel();
			userModel.setUserId(1);
					
			Permission permission=new Permission();
			permission.setType(1);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(2);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(3);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(4);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(5);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			
			permission=new Permission();
			permission.setType(6);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(7);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			
			permission=new Permission();
			permission.setType(8);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			
			permission=new Permission();
			permission.setType(9);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(10);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(11);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(12);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
			permission=new Permission();
			permission.setType(13);
			permission.setUser(userModel);
			permissionService.savePemission(permission);
			
		}
		
		criteria = session.createCriteria(ServiceTax.class);
		int ServiceTaxSize=criteria.list().size();
		
		if(ServiceTaxSize<=0){
			ServiceTax serviceTax =new ServiceTax();
			serviceTax.setStatus(1);
			serviceTax.setTax(14.5);
			session.save(serviceTax);
			session.beginTransaction().commit();
		}
		
		criteria = session.createCriteria(Status.class);
		int statusSize=criteria.list().size();
		
		if(statusSize<=0){
			Status status =new Status();
			status.setStatus("Open");
			session.save(status);
			session.beginTransaction().commit();
			
			status =new Status();
			status.setStatus("Close");
			session.save(status);
			session.beginTransaction().commit();
			
		}
		
	}



}
