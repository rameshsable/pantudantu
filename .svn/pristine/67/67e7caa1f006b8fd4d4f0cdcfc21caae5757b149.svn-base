package com.xanandu.pantudantu.pass;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.xanandu.pantudantu.model.FeedModel;
import com.xanandu.pantudantu.model.MonthlyPass;
import com.xanandu.pantudantu.model.MonthlyPassAssignment;
import com.xanandu.pantudantu.model.PassPaymentDetails;
import com.xanandu.pantudantu.model.RoleModel;
import com.xanandu.pantudantu.model.UserModel;
import com.xanandu.pantudantu.model.VisitPass;
import com.xanandu.pantudantu.model.VisitPassAssignmen;


@Repository("PassDao")
public class PassDaoImpl implements PassDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<VisitPassAssignmen> getListOfVisitPassAssignment() {
		Session session=sessionFactory.openSession();
		 Criteria criteria=session.createCriteria(VisitPassAssignmen.class);
		 List<VisitPassAssignmen> assignmens=criteria.list();
		 session.close();
		 return assignmens ;
		
	}

	@Override
	public List<MonthlyPassAssignment> getListOfMonthPassAssignment() {
		Session session=sessionFactory.openSession();
		 Criteria criteria=session.createCriteria(MonthlyPassAssignment.class);
		 List<MonthlyPassAssignment> assignmens=criteria.list();
		 session.close();
		 return assignmens ;
	}

	@Override
	public VisitPass getVisitPass(int i) {
		
		
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(VisitPass.class);
		criteria.add(Restrictions.eq("visitpassId", i));
		VisitPass pass=	(VisitPass) criteria.uniqueResult();
		session.close();
		return   pass;
		
	}

	@Override
	public MonthlyPass getMonthlyPass(int i) {
		Session session=sessionFactory.openSession();
	Criteria criteria=session.createCriteria(MonthlyPass.class);
	criteria.add(Restrictions.eq("mpnthlyPassId", i));
	MonthlyPass pass=	(MonthlyPass) criteria.uniqueResult();
	session.close();
	return   pass;
	
	}

	@Override
	public VisitPassAssignmen getBillOfVisitPassByVisitPassId(int id) {
		Session session=sessionFactory.openSession();
	
		Criteria criteria=session.createCriteria(VisitPassAssignmen.class);
		criteria.add(Restrictions.eq("vid", id));
		VisitPassAssignmen  pass=	(VisitPassAssignmen) criteria.uniqueResult();
		
		session.close();
		return    pass;
	
	}

	@Override
	public MonthlyPassAssignment getBillOfMonthlyPassByMonthlyPassId(int id) {
		Session session=sessionFactory.openSession();
		
		Criteria criteria=session.createCriteria(MonthlyPassAssignment.class);
		criteria.add(Restrictions.eq("id", id));
		MonthlyPassAssignment  pass=	(MonthlyPassAssignment) criteria.uniqueResult();
		
		session.close();
		return    pass;
	}

	@Override
	public void savePassPaymentDetails(PassPaymentDetails passPaymentDetails) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(passPaymentDetails);
		session.beginTransaction().commit();
		session.close();
	}
	
	
	
	
}
