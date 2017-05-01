package com.xanandu.pantudantu.userTask;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.UserPermissionType;


@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public void addUser(UserModel userModel) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(userModel);
		tx.commit();
		session.close();
	}

	@Override
	public List<UserModel> listUser() {
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(UserModel.class);
		criteria.add(Restrictions.eq("Authority",1));
		System.out.println("inside list user");
		List<UserModel> listUser=criteria.list();
		session.close();
		return listUser;
	
	}

	@Override
	public void deleteUser(int userId) {
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("DELETE FROM UserModel WHERE userId=:userId");
		query.setParameter("userId", userId);
		query.executeUpdate();
		session.close();

	}


	@Override
	public UserModel getUserById(int id) {
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(UserModel.class);
		criteria.add(Restrictions.eq("userId", id));
		UserModel userModel=(UserModel)criteria.uniqueResult();
		session.close();
		return userModel;
	}

	@Override
	public RoleModel userRoll(int userRoll) {
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(RoleModel.class);
		criteria.add(Restrictions.eq("id", userRoll));
		RoleModel userRole=(RoleModel)criteria.uniqueResult();
		session.close();
		return userRole;
	}

	@Override
	public void addRoleModel(String role) {
		// TODO Auto-generated method stub
		RoleModel roleModel =new  RoleModel();
		roleModel.setRole(role);
		
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(roleModel);
		tx.commit();
		session.close();
	}

	@Override
	public void addUserType(String usrType) {
		// TODO Auto-generated method stub
		UserPermissionType  userPermissionType =new  UserPermissionType();
		userPermissionType.setType(usrType);
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(userPermissionType);
		tx.commit();
		session.close();
	}


}
