package com.xanandu.pantudantu.userPermission;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xanandu.pantudantu.model.Customer;
import com.xanandu.pantudantu.model.Permission;
import com.xanandu.pantudantu.model.PermissionTypeId;
import com.xanandu.pantudantu.model.UserModel;

@Repository("UserPermissionDao")
public class UserPermissionDaoImpl implements UserPermissionDao{
	
	@Autowired
	SessionFactory sessionfactory;

	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void savePemission(Permission p) {
		
		System.out.println("inside save function");
		Session session=sessionfactory.openSession();
		session.saveOrUpdate(p);
		session.beginTransaction().commit();
		session.close();
		
		
		
	}
	@Override
	public List<PermissionTypeId> getPermissionList() {
		
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(PermissionTypeId.class);
		criteria.addOrder(Order.asc("type"));
		List<PermissionTypeId>list=criteria.list();
		
		
		for(PermissionTypeId id :list){
			System.out.println(id +" nikhil");
		}
		session.close();
		return list;
	}
	
	@Override
	public List<Permission> getListOfUserPermission(String id){
		
		Session session=sessionFactory.openSession();
		UserModel model =new UserModel();
		model.setUserId(Integer.parseInt(id));
	
		Criteria criteria=session.createCriteria(Permission.class);
		criteria.add(Restrictions.eq("user", model));
		criteria.addOrder(Order.asc("type"));
		List<Permission>list=criteria.list();
		
		session.close();
		return list;
	}
	@Override
	public void deleteUSerPermission(int parseInt) {

		Session session = sessionFactory.openSession();
		try{
			com.xanandu.pantudantu.model.UserModel userModel =new com.xanandu.pantudantu.model.UserModel();
			userModel.setUserId(parseInt); 
			String hql = "delete from Permission where user= :user";  
			Query query=session.createQuery(hql);
			query.setParameter("user", userModel);
			query.executeUpdate(); 
		}catch(Exception exception){
			
		}finally {
			session.close();
		}
		
	
	}
	@Override
	public void addPermissionTypeId(String permissionTypeId) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		PermissionTypeId typeId =new  PermissionTypeId();
		typeId.setType(permissionTypeId);
		session.saveOrUpdate(typeId);
		session.beginTransaction().commit();
		session.close();
	}

}
